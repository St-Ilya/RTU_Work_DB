package ClientServerSocket;

import java.net.*;
import java.io.*;

public class Client {
    public static void main(String[] args) throws IOException{
        Socket clientSocket = new Socket("127.0.0.1", 8000);

        BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(clientSocket.getOutputStream()));
        BufferedReader reader = new BufferedReader(new InputStreamReader(clientSocket.getInputStream()));

        writer.write("HTTP/1.0 200 OK\r\n" +
                "Content-type: text/html\r\n" +
                "\r\n" +
                "<h1>Get me some information<h1>\n");
        writer.flush();


        String message = reader.readLine();
        System.out.println(message);

        writer.close();
        reader.close();
        clientSocket.close();
    }
}
