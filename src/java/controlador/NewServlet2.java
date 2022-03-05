/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javafx.scene.chart.PieChart.Data;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import static javax.ws.rs.client.Entity.json;
import modelo.JugadorDao;
import modelo.player;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/**
 *
 * @author elio
 */
@WebServlet(name = "NewServlet2", urlPatterns = {"/NewServlet2"})
public class NewServlet2 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        JugadorDao playerSafe = new JugadorDao();
        ArrayList<player> arrayplay = new ArrayList<>();
        PrintWriter salida = response.getWriter();
        String menu = request.getParameter("menu");
        String accion = request.getParameter("accion");
        int id = Integer.parseInt(request.getParameter("id"));
        if (menu.equals("players")) {
            switch (accion) {
                case "guardar":

                    String jsonjuego = request.getParameter("json2");

                    JSONObject ObjetoJson = new JSONObject(jsonjuego);
                    JSONArray jsonArray = ObjetoJson.getJSONArray("jugadores");

                    for (int i = 0; i < jsonArray.length(); i++) {
                        JSONObject jsonobj = jsonArray.getJSONObject(i);
                        //salida.print(jsonobj);
                        String dorsal = jsonobj.getString("dorsal");
                        String nombre = jsonobj.getString("nombre");
                        int edad = Integer.parseInt(jsonobj.getString("edad"));
                        player play = new player(dorsal, nombre, edad);
                        arrayplay.add(play);
                    }

                    String mensaje = playerSafe.guardar(arrayplay);
                    salida.print(mensaje);

                    /*
                    
                    
                    
                    
                    JSONArray jsonArray = ObjetoJson.getJSONArray("jugadores");
                   
                    for (int i = 0; i < jsonArray.length(); i++) {
                     
                            JSONObject jsonobj = jsonArray.getJSONObject(i);

                            //Aquí se obtiene el dato y es guardado en una lista
                            String dorsal = jsonobj.getString("dorsal");
                            String nombre = jsonobj.getString("nombre");
                            int edad = Integer.parseInt(jsonobj.getString("edad"));

                            player play =new player(dorsal, nombre, edad);
                            arrayplay.add(play);
                      
                    }
                   
                   salida.print(arrayplay.get(0).getNombre());
                    salida.print(arrayplay.get(0).getEdad());
                    
                        salida.print(playerDao.guardar(arrayplay));*/
                    //JSONArray jsonArray = ObjetoJson.getJSONArray("lstOfficialDocuments");
                    //JSONArray results = response.getJSONArray("Results");
                    // JSONArray jsonArray = ObjetoJson.getJSONArray("equipo");
                    //for (int indice = 0; indice < ObjetoJson.length(); indice++) {
                    //}
                    break;

                case "listar":
                    listarJugadores(request, response);
                    break;

                case "eliminar":
                    String res = playerSafe.eliminar(id);
                    salida.write(res);
                    break;
                case "editar":
                    String json = request.getParameter("json2");

                     ObjetoJson = new JSONObject(json);
                     jsonArray = ObjetoJson.getJSONArray("jugadores");

                    for (int i = 0; i < jsonArray.length(); i++) {
                        JSONObject jsonobj = jsonArray.getJSONObject(i);
                        //salida.print(jsonobj);
                        String dorsal = jsonobj.getString("dorsal");
                        String nombre = jsonobj.getString("nombre");
                        int edad = Integer.parseInt(jsonobj.getString("edad"));
                        
                        player play = new player(dorsal, nombre, edad);
                        arrayplay.add(play);
                    }

                     mensaje = playerSafe.editar(arrayplay,id);
                    salida.print(mensaje);

                    break;
            }
        }

    }

    private void listarJugadores(HttpServletRequest request, HttpServletResponse response) {

        //nc.setCodigo(request.getParameter("txtcodproducto"));
        JugadorDao playerSafe = new JugadorDao();
        List<player> play = null;
        try {
            //playerSafe.listar();
            play = playerSafe.listar();
            response.setContentType("application/json");
            response.getWriter().print(new Gson().toJson(play, new TypeToken<List<player>>() {
            }.getType()));

        } catch (Exception e) {
            System.out.println("Error" + e.getMessage());
        }

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
