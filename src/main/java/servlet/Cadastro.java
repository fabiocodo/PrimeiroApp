package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.ProdutoDAO;
import VO.Produto;

/**
 * Servlet implementation class Cadastro
 */
public class Cadastro extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Cadastro() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Minha Primeira Chamada: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nome = request.getParameter("nome");
		String marca = request.getParameter("marca");
		String codigo = request.getParameter("codigo");
		Produto p= new Produto();
		String msg="";
		p.setMarca(marca);
		p.setNome(nome);		
		ProdutoDAO dao = new ProdutoDAO();
		if(codigo=="" || codigo==null) {
			msg="Produto Incluído com Sucesso";
			dao.newProduto(p);
		}else {
			msg="Produto Alterado com Sucesso";
			p.setCodigo(Integer.parseInt(codigo));
			dao.editProduto(p);
		}
		request.setAttribute("msg", msg);	
		request.getRequestDispatcher("/Produto/Index.jsp").forward(request, response);
		
	}

}
