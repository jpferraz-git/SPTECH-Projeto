
// CÓDIGO SENSORES DE TEMPERATURA (RM35) E DE UMIDADE E TEMPERATURA (DHT11)
  #include "DHT.h" //TRAZ A BIBLIOTECA DOS SENSORES "DHT"

  #define TIPO_SENSOR DHT11 //DEFINE O SENSOR QUE SERÁ UTILIZADO (DHT11)

  const int PINO_SENSOR_TEMPERATURA = A0; //CONSTANTE QUE INDICA A PORTA QUE SERÁ UTILIZADA NO SENSOR RM35 (A0)

  float temperaturaCelsius; //VARIÁVEL QUE ARMAZENARA A TEMPERATURA DO SENSOR RM35

  const int PINO_SENSOR_DHT11 = A1;//CONSTANTE QUE INDICA A PORTA QUE SERÁ UTILIZADA NO SENSOR DHT11(A1)

  DHT sensorDHT(PINO_SENSOR_DHT11, TIPO_SENSOR); //CRIA UMA VARIÁVEL "DHT" PARA O SENSOR DHT11

  void setup() { //EXECUTADA QUANDO CODIGO É INICIADO

      Serial.begin(9600); //DEFINE A TAXA DE BITS POR SEGUNDO UTILIZADA NA TRANSCRIÇÃO DE DADOS 
      sensorDHT.begin(); //INICIALIZA O SENSOR DHT11
        }


  void loop() { //EXECUTARÁ O CÓDIGO ENQUANTO ESTA CONDIÇÃO FOR VERDADEIRA

      int valorLeitura = analogRead(PINO_SENSOR_TEMPERATURA); //OBTÉM O VALOR DE TEMPERATURA RECEBIDO NA PORTA REFERIDA 

      temperaturaCelsius = (valorLeitura * 5.0 / 1023.0) / 0.01; // CONVERTE A TEMPERATURA PARA CELSIUS

      float umidade = sensorDHT.readHumidity(); //OBTÉM A UMIDADE DO SENSOR DHT11

      float temperatura_Dht11 = sensorDHT.readTemperature(); // OBTEM A TEMPERATURA DO SENSOR DHT11

      if (isnan(temperatura_Dht11) || isnan(umidade)) {
          Serial.println("Erro ao ler os dados do sensor"); //SE AS VARIÁVEIS NÃO FOREM UM NÚMERO, PRINTARA A SEGUINTE MENSAGEM
      } else {
                                //SE TUDO ESTIVE CORRETO, PRINTARÁ OS DADOS DO SENSOR DE DHT11
          Serial.print("Umidade: ");
          Serial.print(umidade);
          Serial.print(" % ");
          Serial.print("Temperatura (DHT11): ");
          Serial.print(temperatura_Dht11);
          Serial.println(" °C");
          
      }
       //PRINTARÁ OS DADOS DO SENSOR RM35
      Serial.print("Temperatura (LM35): ");
      Serial.print(temperaturaCelsius);
      Serial.println(" °C");


      delay(1000); //GUARDARÁ UM SEGUNDO ANTES DE FAZER O PROXÍMO PRINT
  }


