<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.InputStreamReader"%>
<%@ page import="java.io.OutputStreamWriter"%>
<%@ page import="java.net.HttpURLConnection"%>
<%@ page import="java.net.URL"%>
<%@ page import="org.json.JSONObject"%>
<%
    String inputText = request.getParameter("inputText");
    String language = request.getParameter("language");
    String translatedText = "";

    if (inputText != null && language != null) {
        try {
            String urlStr = "https://libretranslate.de/translate";
            URL url = new URL(urlStr);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setDoOutput(true);
            conn.setRequestMethod("POST");
            conn.setRequestProperty("Content-Type", "application/json; charset=UTF-8");

            JSONObject jsonBody = new JSONObject();
            jsonBody.put("q", inputText);
            jsonBody.put("source", "en");
            jsonBody.put("target", language);
            jsonBody.put("format", "text");

            OutputStreamWriter writer = new OutputStreamWriter(conn.getOutputStream(), "UTF-8");
            writer.write(jsonBody.toString());
            writer.close();

            InputStreamReader reader = new InputStreamReader(conn.getInputStream(), "UTF-8");
            StringBuilder response1 = new StringBuilder();
            char[] buffer = new char[1024];
            int read;
            while ((read = reader.read(buffer)) != -1) {
                response1.append(buffer, 0, read);
            }
            reader.close();

            JSONObject jsonResponse = new JSONObject(response.toString());
            translatedText = jsonResponse.getString("translatedText");

        } catch (Exception e) {
            translatedText = "Error during translation: " + e.getMessage();
        }
    }
%>