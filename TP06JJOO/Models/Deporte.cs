public class Deporte
{
    public int idDeporte {get; set;}
    public string Nombre {get; set;}
    public string Foto {get; set;}

    public Deporte(){}
    public Deporte(int pIdDeporte, string pNombre, string pFoto)
    {
        idDeporte = pIdDeporte;
        Nombre = pNombre;
        Foto = pFoto;
    }
}