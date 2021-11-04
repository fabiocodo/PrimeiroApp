package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.CategoriaDAO;
import VO.Categoria;

/**
 * Servlet implementation class CategoriaGravar
 */
public class CategoriaGravar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CategoriaGravar() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nome = request.getParameter("nome");
		String codigo = request.getParameter("codigo");
		Categoria p= new Categoria();
		String msg="";
		p.setNome(nome);		
		CategoriaDAO dao = new CategoriaDAO();
		if(codigo=="" || codigo==null) {
			msg="Categoria Incluído com Sucesso";
			dao.newCategoria(p);
		}else {
			msg="Categoria Alterado com Sucesso";
			p.setCodigo(Integer.parseInt(codigo));
			dao.editCategoria(p);
		}
		request.setAttribute("msg", msg);	
		request.getRequestDispatcher("/Categoria/Index.jsp").forward(request, response);
	}

}
