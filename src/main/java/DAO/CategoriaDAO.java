package DAO;

import java.util.ArrayList;

import VO.Categoria;
import VO.Produto;

public class CategoriaDAO {
	public ArrayList<Categoria> getCategorias(){		
		ArrayList <Categoria> lst = new ArrayList();
		Categoria p= new Categoria();
		p.setCodigo(0);
		p.setNome("Teste 1");		
		lst.add(p);
		Categoria p2= new Categoria();
		p2.setCodigo(1);
		p2.setNome("Teste 2");		
		lst.add(p2);
		Categoria p3= new Categoria();
		p3.setCodigo(2);
		p3.setNome("Teste 3");		
		lst.add(p3);
		Categoria p4= new Categoria();
		p4.setCodigo(3);
		p4.setNome("Teste Prod 4");	
		lst.add(p4);
		return lst;
	}
	public ArrayList<Categoria> findCategorias(String nome){
		
		ArrayList <Categoria> lst = new ArrayList();
		Categoria p= new Categoria();
		p.setCodigo(0);
		p.setNome("Teste 1");
		
		lst.add(p);		
		return lst;
	}
	public void newCategoria(Categoria p){
		
		
	}
	public void editCategoria(Categoria p){
		
		
	}
	public void deleteCategoria(Categoria p){
		
		
	}
	public Categoria findByIdCategoria(int id){
		Categoria p = new Categoria();
		p.setCodigo(2);
		p.setNome("Teste 3");		
		return p;
	}
}
