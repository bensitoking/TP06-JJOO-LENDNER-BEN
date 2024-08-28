    using System.Data.SqlClient;
    using System.Reflection.Metadata.Ecma335;
    using Dapper;
using Microsoft.AspNetCore.Mvc;
public static class BD
    {
   private static string _connectionString = @"Server=.\SQLEXPRESS;DataBase=JJOO;Trusted_Connection=True;";

    public static void agregarDeportista(Deportista dep)    
    {
        string SQL = "INSERT INTO Deportistas(Apellido, Nombre, FechaDeNacimiento, Foto, idPais, idDeporte) VALUES(@pApellido, @pNombre, @pFechaNacimiento, @pFoto, @pidPais, @pidDeporte)";
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
            db.Execute(SQL, new{pApellido = dep.Apellido, pNombre = dep.Nombre, pFechaNacimiento = dep.FechaNacimiento, pFoto = dep.Foto, pidPais = dep.idPais, pidDeporte = dep.idDeporte});
        }
    }
    public static void eliminarDeportista(int pIdDeportista)
    {
        string SQL = "DELETE FROM Deportistas WHERE idDeportista = @ID";
        using(SqlConnection db = new SqlConnection(_connectionString)){
            db.Execute(SQL, new{ID = pIdDeportista});
        }
    }

    public static Deporte verInfoDeporte(int pidDeporte)
    {
        Deporte dep = null;
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
            string SQL = "SELECT * FROM Deportes WHERE idDeporte = @ID";
            dep = db.QueryFirstOrDefault<Deporte>(SQL, new {ID = pidDeporte});
        }
        return dep;
    }

    public static Pais verInfoPais(int pidPais)
    {
        Pais pais = null;
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
            string SQL = "SELECT * FROM Paises WHERE idPais = @ID";
            pais = db.QueryFirstOrDefault<Pais>(SQL, new {ID = pidPais});
        }
        return pais;
    }

    public static Deportista verInfoDeportista(int pIdDeportista)
    {
        Deportista depo = null;
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
            string SQL = "SELECT * FROM Deportistas WHERE idDeportista = @ID";
            depo = db.QueryFirstOrDefault<Deportista>(SQL, new {ID = pIdDeportista});
        }
        return depo;
    }

    public static List<Pais> listarPaises()
    {
        List<Pais> ListaPaises = new List<Pais>();
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
            string SQL = "SELECT * FROM Paises";
            ListaPaises = db.Query<Pais>(SQL).ToList();
        }
        return ListaPaises;
    }

    public static List<Deportista> listarDeportistasxDeporte(int pIdDeporte)
    {
        List<Deportista> ListaDeportistas = new List<Deportista>();
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
            string SQL = "SELECT * FROM Deportistas WHERE idDeporte = @ID";
            ListaDeportistas = db.Query<Deportista>(SQL, new {ID = pIdDeporte}).ToList();
        }
        return ListaDeportistas;
    }

    public static List<Deportista> listarDeportistasxPais(int pIdPais)
    {
        List<Deportista> ListaDeportistasxPais = new List<Deportista>();
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
            string SQL = "SELECT * FROM Deportistas WHERE idPais = @ID";
            ListaDeportistasxPais = db.Query<Deportista>(SQL, new {ID = pIdPais}).ToList();
        }
        return ListaDeportistasxPais;
    }

    public static List<Deporte> listarDeporte()
    {
        List<Deporte> ListaDeportes = new List<Deporte>();
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
            string SQL = "SELECT * FROM Deportes";
            ListaDeportes = db.Query<Deporte>(SQL).ToList();
        }
        return ListaDeportes;
    }

    public static List<Deportista> listarDeportistas()
    {
        List<Deportista> ListaDeportistas= new List<Deportista>();
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
            string SQL = "SELECT * FROM Deportistas";
            ListaDeportistas = db.Query<Deportista>(SQL).ToList();
        }
        return ListaDeportistas;
    }


    public static int ObtenerCantDeportistas()
    {
        string SQL = "SELECT COUNT(idDeportista) FROM Deportistas";
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            return db.QueryFirstOrDefault<int>(SQL);
        }
    }
    }
