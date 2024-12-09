package models;

public class Categoria {
    private Long idCategoria;
    private String Categorianombre;
    public Categoria() {

    }
    public Categoria(Long idCategoria, String Categorianombre) {
        this.idCategoria = idCategoria;
        this.Categorianombre = Categorianombre;
    }

    public Long getIdCategoria() {
        return idCategoria;
    }

    public void setIdCategoria(Long idCategoria) {
        this.idCategoria = idCategoria;
    }

    public String getCategorianombre() {
        return Categorianombre;
    }

    public void setCategorianombre(String categorianombre) {
        Categorianombre = categorianombre;
    }
}
