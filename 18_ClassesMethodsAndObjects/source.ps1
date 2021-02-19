Write-Host "`t1) Classes, Properties, Methods and Objects:"

# defining a class
class Device{
  # class properties
  [string]$Brand
  [string]$Model
  [string]$VendorSku

  # constructor
  Device(
    [string]$b,
    [string]$m,
    [string]$vsk
  ){
    $this.Brand = $b
    $this.Model = $m
    $this.VendorSku = $vsk
  }

  [string]ToString(){
    return ("{0}|{1}|{2}" -f $this.Brand, $this.Model, $this.VendorSku)
  }
}

class Rack{
  [int]$Slots = 10
  [string]$Brand
  [string]$Model
  [string]$VendorSku
  [string]$AssetId
  [Device[]]$Devices = [Device[]]::new($this.Slots)

  [void] AddDevice([Device]$dev, [int]$slot){
    $this.Devices[$slot] = $dev
  }

  [void] RemoveDevice([int]$slot){
    $this.Devices[$slot] = $null
  }

  [int[]] GetAvailableSlots(){
    [int]$i = 0
    return @($this.Devices.foreach{ if($_ -eq $null){$i}; $i++ })
  }
}

[Device]$surface = [Device]::new("Microsoft", "Surface Pro 4", "10000") # object creation, constructor will get called automatically here
[Device]$galaxy = [Device]::new("Samsung", "Galaxy S10", "210000") # object creation, constructor will get called automatically here

Write-Host "`n-> Printing the Device Class Objects:"
$surface.ToString()
$galaxy.ToString()

# creating a rack object
$rack = [Rack]::new()

# adding a device in rack
$rack.AddDevice($surface,4)
$rack.AddDevice($galaxy,2)

Write-Host "`n-> Available Slots in Rack:"
$rack.GetAvailableSlots()

Write-Host("`n-> Rack Object:")
$rack

Write-Host "`n`t2) Inheritance"
Write-Host "`n-> Calling Base Class Constructor"

class Person {
  [int]$Age

  # constructor
  Person([int]$a){
    $this.Age = $a
  }

  [void]Hello(){
    Write-Host "--> Hello, I am from Person Class"
  }
}

# inheritance
class Child : Person{
  [string]$School

  # constructor
  Child([int]$a, [string]$s) : base($a) {
    $this.School = $s
  }
}

# creating a child class object
[Child]$littleOne = [Child]::new(10, "Ukan Team")

Write-Host "-->"$littleOne.Age
Write-Host "-->"$littleOne.School

Write-Host "`n-> Invoke Base Class Methods:"
$littleOne.Hello()

<#
OUTPUT:

        1) Classes, Properties, Methods and Objects:

-> Printing the Device Class Objects:
Microsoft|Surface Pro 4|10000
Samsung|Galaxy S10|210000

-> Available Slots in Rack:
0
1
3
5
6
7
8
9

-> Rack Object:

Slots     : 10
Devices   : {$null, $null, Samsung|Galaxy S10|210000, $null…}
Brand     : 
Model     : 
VendorSku : 
AssetId   : 


        2) Inheritance

-> Calling Base Class Constructor
--> 10
--> Ukan Team

-> Invoke Base Class Methods:
--> Hello, I am from Person Class
#>