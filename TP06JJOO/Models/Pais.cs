public class Pais
{
    public int idPais {get; set;}
    public string Nombre {get; set;}
    public string Bandera {get; set;}
    public DateTime FechaFundacion {get; set;}

    public Pais(){}
    public Pais(int pIdPais, string pNombre, string pBandera, DateTime pFechaFundacion)
    {
        idPais = pIdPais;
        Nombre = pNombre;
        Bandera = pBandera;
        FechaFundacion = pFechaFundacion;
    }
}