package ClientServerSocket;

import java.io.*;
import java.net.ServerSocket;
import java.net.Socket;

public class Server {

    public static void main(String[] args) throws IOException {

        int count = 0;
        ServerSocket serverSocket = new ServerSocket(8000);

        while (true) {
            Socket clientSocket = serverSocket.accept();

            System.out.println("Client accepted " + (++count));

            BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(clientSocket.getOutputStream()));
            BufferedReader reader = new BufferedReader(new InputStreamReader(clientSocket.getInputStream()));

            String request = reader.readLine();
            String response = "#" + count + ", your message length is " + request.length() + "\n";
            writer.write("HTTP/1.0 200 OK\r\n" +
                    "Content-type: text/html\r\n" +
                    "\r\n" +
                    "<h1>" + response + "<h1>\n");
            writer.flush();

            reader.close();
            writer.close();
            clientSocket.close();
        }

        // serverSocket.close();
        // add new test
    }
}
