package service;

import models.Productos;
import repository.ProductoRepositoryJdbcImplement;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.util.Optional;

public class ProductoServicesJdbcImplements implements ProductoService {
    //Vamos a declarar una variable
    //de tipo productorepositoryjdcbimpelements
    private ProductoRepositoryJdbcImplement repositoryJdbc;

    @Override
    public List<Productos> listar() {
        try {
            return repositoryJdbc.listar();
        } catch (SQLException throwables) {
            throw new ServiceJdbcException(throwables.getMessage(),throwables.getCause());
        }
    }

    @Override
    public Optional<Productos> agregarPorId(Long idProducto) {
        return Optional.empty();
    }

    public ProductoServicesJdbcImplements(Connection connection) {
        this.repositoryJdbc = new ProductoRepositoryJdbcImplement(connection);

    }
}
