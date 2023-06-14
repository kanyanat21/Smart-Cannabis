#include <ESP8266WiFi.h>
#include <Wire.h>
#include <PubSubClient.h>
#include <LiquidCrystal_I2C.h>



#include "DHT.h"
#define DHTPIN D4
#define DHTTYPE DHT11 // DHT 11

DHT dht(DHTPIN, DHTTYPE);
LiquidCrystal_I2C lcd(0x27, 16, 2);



#define humid "sensor/humid"
#define tempc "sensor/tempc"
#define tempf "sensor/tempf"

int a = D1 ;
int b = D2 ;
int c = D3   ;

const char* ssid = "Mook";
const char* password = "12345678";
const char* mqtt_server = "192.168.108.245";

WiFiClient espClient;
PubSubClient client(espClient);
long lastMsg = 0;
char msg[50];
int value = 0;

void setup_wifi() {

  delay(10);
  // We start by connecting to a WiFi network
  Serial.println();
  Serial.print("Connecting to ");
  Serial.println(ssid);

  WiFi.begin(ssid, password);

  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }

  randomSeed(micros());

  Serial.println("");
  Serial.println("WiFi connected");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());
}

void callback(char* topic, byte* payload, unsigned int length) {
  Serial.print("Message arrived [");
  Serial.print(topic);
  Serial.print("] ");
  for (int i = 0; i < length; i++) {
    Serial.print((char)payload[i]);
  }
  Serial.println();


if (strcmp(topic,"LED1")==0){
    if ((char)payload[0] == '1') {
      digitalWrite(a, HIGH); 
    } else {
      digitalWrite(a, LOW); 
    }
  }
 
if (strcmp(topic,"LED2")==0){
    if ((char)payload[0] == '1') {
      digitalWrite(b, HIGH); 
    } else {
      digitalWrite(b, LOW); 
    }
  }
 
}

void reconnect() {
  // Loop until we're reconnected
  while (!client.connected()) {
    Serial.print("Attempting MQTT connection...");
    // Create a random client ID
    String clientId = "ESP8266Client-";
    clientId += String(random(0xffff), HEX);
    // Attempt to connect
    String clientName;  
      clientName += "esp8266-";
      uint8_t mac[6];
      WiFi.macAddress(mac);
      clientName += macToStr(mac);
      clientName += "-";
      clientName += String(micros() & 0xff, 16);
      Serial.print("Connecting to ");
      Serial.print(mqtt_server);
      Serial.print(" as ");
      Serial.println(clientName);
    if (client.connect(clientId.c_str())) {
      Serial.println("connected");
      // Once connected, publish an announcement...
      //client.publish("outTopic", "hello world");
      // ... and resubscribe
      
      client.subscribe("LED1");
      client.subscribe("LED2");
      client.subscribe("LED3");

    } else {
      Serial.print("failed, rc=");
      Serial.print(client.state());
      Serial.println(" try again in 5 seconds");
      // Wait 5 seconds before retrying
      delay(5000);
    }
  }
}

void setup() {
  
  pinMode(a, OUTPUT);
  pinMode(b, OUTPUT);
  pinMode(c, OUTPUT);

   lcd.init();
  lcd.backlight();
  lcd.setCursor(0,0);
  lcd.print("Humidity=");
  lcd.setCursor(0,1);
  lcd.print("temp=");
}
  
  Serial.begin(115200);
  setup_wifi();
  dht.begin();
  setup_wifi();
  client.setServer(mqtt_server, 1883);
  client.setCallback(callback);
}

String macToStr(const uint8_t* mac)
{
  String result;
  for (int i = 0; i < 6; ++i) {
    result += String(mac[i], 16);
    if (i < 5)
      result += ':';
  }
  return result;
}


void loop() {

  if (!client.connected()) {
    reconnect();
  }
  client.loop();
  delay(10000);

      float h = dht.readHumidity();
      // Read temperature as Celsius (the default)
      float t = dht.readTemperature();
      // Read temperature as Fahrenheit (isFahrenheit = true)
      float f = dht.readTemperature(true);

      lcd.setCursor(10,0);
      lcd.print(h);
      lcd.setCursor(10,1);
      lcd.print(t);
      
      // Check if any reads failed and exit early (to try again).
      if (isnan(h) || isnan(t) || isnan(f)) {
      Serial.println("Failed to read from DHT sensor!");
      return;
      }

      Serial.print("Temperature:");
      Serial.println(String(t).c_str());
      
      client.publish(tempc, String(t).c_str(), true);

      Serial.print("Humidity:");
      Serial.println(String(h).c_str());
      
      client.publish(humid, String(h).c_str(), true);
      
     if (t >= 28) {
      digitalWrite(c,HIGH);
     }
     else if (t <28) {
      digitalWrite(c,LOW);
      
     }

} 
