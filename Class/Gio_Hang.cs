using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Gio_Hang_KH
/// </summary>
public class Gio_Hang
{
    private int ms;
    private string tensach;
    private int dongia;
    private int soluong;
    private int thanhtien;
    public int Ms { get => ms; set => ms = value; }
    public string Tensach { get => tensach; set => tensach = value; }
    public int Dongia { get => dongia; set => dongia = value; }
    public int Soluong { get => soluong; set => soluong = value; }
    public decimal Thanhtien { get { return thanhtien * dongia; } }
    public Gio_Hang()
    {

    }
}