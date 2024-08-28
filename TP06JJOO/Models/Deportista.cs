public class Deportista
{
    public int idDeportista {get; set;}
    public string Nombre {get; set;}
    public string Apellido {get; set;}
    public DateTime FechaNacimiento {get;set;}
    public string Foto {get; set;}
    public int idPais {get; set;}
    public int idDeporte {get; set;}

    public Deportista(){}
    public Deportista(int pIdDeportista, string pNombre, string pApellido, DateTime pFechaNacimiento, string pFoto, int pIdPais, int pIdDeporte)
    {
        idDeportista = pIdDeportista;
        idDeporte = pIdDeporte;
        Nombre = pNombre;
        Apellido = pApellido;
        FechaNacimiento = pFechaNacimiento;
        idPais = pIdPais;
        Foto = pFoto;
    }
}