package teste;

import model.bean.*;
import model.dao.*;
import java.sql.Date;

public class teste {
	public static void main(String args[]) {
		EnderecoDAO enderecoDao = new EnderecoDAO();
		
		Endereco endereco = new Endereco();
		Date data = new Date(0);
		
		
		endereco.setCep("13222045");
		endereco.setPais("Brasil");
		endereco.setCidade("Jundiai");
		endereco.setBairro("Vila Arens");
		endereco.setRua("Av. Ferroviarios");
		endereco.setNumero(1933);
		
		//enderecoDao.save(endereco);
		for(Endereco c: enderecoDao.getEnderecos()) {
			System.out.println("Endereços: " + c.getCidade() + " "+ c.getBairro() + " " + c.getIdEndereco());
		}
		
		UsuarioDAO usuarioDao = new UsuarioDAO();
		
		Usuario usuario = new Usuario();
		
		//usuario.setRg(123213);
		//usuario.setCpf("212312");
		//usuario.setDataNascimento(data);
		//usuario.setEndereco(endereco);
		//usuario.setLogin("Login");
		//usuario.setNome("Nome");
		//usuario.setSenha("Senha");
		
		//usuarioDao.save(usuario);
		for(Usuario u: usuarioDao.getUsarios() ) {
			System.out.println("Usuario " + u.getNome() + " " + u.getEndereco().getBairro());
		}
		
		DestinoDAO destinoDao = new DestinoDAO();
		Destino destino = new Destino();
		
		destino.setAeroporto("Aeroporto");
		destino.setCidade("Cidade");
		destino.setPais("Pais");
		//destinoDao.save(destino);
		for(Destino d: destinoDao.getDestinos() ) {
			System.out.println("Pais " + d.getPais());
		}
		
		PassagemDAO passagemDao = new PassagemDAO();
		Passagem passagem = new Passagem();
		
		passagem.setCompanhia("Gol");
		passagem.setDataIda(data);
		passagem.setDataVolta(data);
		passagem.setDestino(destino);
		passagem.setValor(1231.12);
		passagem.setLocalPartida("Partida");
		//passagemDao.save(passagem);
		
		for(Passagem p: passagemDao.getPassagem() ) {
			System.out.println("Pais " + p.getDestino().getPais() + " " + p.getValor());
		}
		
		ComprasDAO comprasDao = new ComprasDAO();
		Compras compras = new Compras();
		
		compras.setPassagem(passagem);
		compras.setUsuario(usuario);
		compras.setDataCompra(data);
		compras.setValorTotal(1100.1);
		//comprasDao.save(compras);
		
		for(Compras c: comprasDao.getCompras() ) {
			System.out.println("Pais " + c.getUsuario().getNome() + " " + c.getPassagem().getLocalPartida() + " " + c.getValorTotal());
		}
		
	}
}
