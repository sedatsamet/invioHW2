import UIKit

class Odev2 {
    // Parametre olarak celcius girilen dereceyi fahrenheit a dönüştüren fonksiyon
    func soru1(derece:Double) -> Double {
        var fahrenhiet : Double = (derece * 1.8) + 32
        return fahrenhiet
    }
    // Parametre olarak kenar uzunlukları girilen dikdörtgenin çevresini hesaplayan fonksiyon
    func soru2(kenar1:Int, kenar2:Int) {
        var cevre = (kenar1 + kenar2)*2
        print(cevre)
    }
    // Parametre olarak girilen sayının faktoriyel değerini hesaplayan fonksiyon
    func soru3(sayi:Int) -> Int {
        var fact = 1
        var num = sayi
        while num > 1{
            fact *= num
            num = num - 1
        }
        return fact
    }
    // Parametre olarak girilen kelime ve harf için harfin kelime içinde kaç adet olduğunu gösteren fonksiyon
    func soru4(kelime:String, harf:String) {
        var say = 0 // Sayaç
        for i in kelime.lowercased() {
            if String(i) == harf.lowercased() { // harfin kelimedeki kontrolü
                say+=1 // sayaç arttırma
            }
        }
        print(say)
    }
    // Kenar sayısı girilen çokgenin iç açılarını hesaplayan fonksiyon
    func soru5(kenarSayisi:Int) -> Int {
        var icAciToplam = (kenarSayisi - 2) * 180
        return icAciToplam
    }
    // Parametre olarak girilen gün sayısına göre maaş hesabı yapan fonksiyon
    // 1 Günde 8 Saat çalışılabilir
    // Çalışma saat ücret : 10 ₺
    // Mesai saat ücret : 20 ₺
    // 160 Saat üzeri mesai
    func soru6(gunSayisi:Double) -> Double {
        var calismaSaati = gunSayisi * 8
        var maas : Double?
        if calismaSaati > 160 {
            var mesaiSaati = calismaSaati - 160
            calismaSaati -= mesaiSaati
            var mesaiUcreti = mesaiSaati * 20
            maas = Double(calismaSaati) * 10 + Double(mesaiUcreti)
        } else {
            maas = Double(calismaSaati) * 10
        }
        return maas!
    }
    // Parametre olarak girilen kotadan ücret hesaplayan fonksiyon
    // 50GB : 100 ₺  / Kota aşım sonrası 1GB : 4 ₺ 
    func soru7(kota:Int) -> Int {
        var ucret : Int?
        if kota > 50 {
            ucret = ((kota - 50) * 4) + 100
        }
        else {
            ucret = 100
        }
        return ucret!
    }
}

var o = Odev2()

// Soru-1
var gelenFahrenhiet = o.soru1(derece: 27)
print(gelenFahrenhiet)

print("--------------")

// Soru-2
o.soru2(kenar1: 5, kenar2: 10)

print("--------------")

// Soru-3
var donenFact = o.soru3(sayi: 6)
print(donenFact)

print("--------------")

// Soru-4
o.soru4(kelime: "Araba", harf: "a")

print("--------------")

// Soru-5
var icAciToplami = o.soru5(kenarSayisi: 4)
print(icAciToplami)

print("--------------")

// Soru-6
var maasHesapla = o.soru6(gunSayisi: 21.5)
print(maasHesapla)

print("--------------")

// Soru-7
var kotaUcret = o.soru7(kota: 60)
print(kotaUcret)
