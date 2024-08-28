using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using TP06JJOO.Models;

namespace TP06JJOO.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Deportes()
        {
            ViewBag.Deportes = BD.listarDeporte();
            return View();
        }

        public IActionResult Paises()
        {
            ViewBag.Paises = BD.listarPaises();
            return View();
        }

        public IActionResult DetalleDeporte(int idDeporte)
        {

            ViewBag.VerInfoDeporte = BD.verInfoDeporte(idDeporte);
            ViewBag.ListarDeportistasxDeporte = BD.listarDeportistasxDeporte(idDeporte);
            return View();
        }

        public IActionResult DetallePais(int idPais)
        {
            ViewBag.VerInfoPais = BD.verInfoPais(idPais);
            ViewBag.ListarDeportistasxPais = BD.listarDeportistasxPais(idPais);
            return View();
        }

        public IActionResult DetalleDeportista(int idDeportista)
        {
            ViewBag.VerInfoDeportista = BD.verInfoDeportista(idDeportista);
            return View();
        }

        public IActionResult AgregarDeportista()
        {
            ViewBag.ListaDeportes = BD.listarDeporte();
            ViewBag.ListaPaises = BD.listarPaises();
            return View();
        }

        [HttpPost]
        public IActionResult GuardarDeportista(Deportista dep)
        {
            BD.agregarDeportista(dep);
            return RedirectToAction("Index");
        }

        public IActionResult EliminarDeportistaBD(int idDeportista)
        {
            BD.eliminarDeportista(idDeportista);
            return RedirectToAction("Index");
        }
        
        public IActionResult EliminarDeportista()
        {
            {
            ViewBag.ListaDeportes = BD.listarDeporte();
            ViewBag.ListaPaises = BD.listarPaises();
            return View();
        }
        }

        public IActionResult Creditos()
        {
            return View();
        }

         public IActionResult Historia()
        {
            return View();
        }
    }
}
