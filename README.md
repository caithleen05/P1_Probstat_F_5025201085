# P1_Probstat_F_5025201085

Praktikum 1 Probstat F

## Identitas
Renita Caithleen Davita/5025201085

## Soal 1

 - Untuk soal 1A digunakan dgeom untuk membantu menghasilkan hasil peluangnya.
    ```R
    # A
    p = 0.2
    x = 3
    P <- dgeom(x = n, prob = p)
    P
    ```
   
 - Untuk 1B digunakan fungsi rgeom untuk mean geometrik.
    ```R
    # B
    mean(rgeom(n = 10000, prob = p) == 3)
    mean
    ```
  
 - Untuk 1C kesimpulan yang bisa didapat adalah bahwa dari kedua poin menghasilkan hasil yang berbeda dimana poin A merupakan nilai dari peluang2 yang dapat terjadi di kejadian tersebut sedangkan poin B merupakan rata-rata dari semua peluang yang bisa terjadi. 
    
 - Untuk 1D gunakan fungsi hist() untuk membuat histogram geometrik
    ```R
    # D
    n = 10000
    hist(rgeom(n, prob), main = 'Histogram Geometrik')
    ```
   
 - Untuk 1E digunakan banyak data dikalikan peluang kejadian untuk nilai rataan sedangkan untuk nilai varian memakai nilai rataan dikali komplemen peluang kejadian
 - 
    ```R
    # E
    mean = n * (prob = p)
    mean
    ```
   
    ```R
    # E
    variance = (1 - p) / (p ^ 2)
    variance
    ```

ss=
![image]

![image]

    


</br>

## Soal 2

 - Untuk soal 2A digunakan bantuan fungsi dbinom untuk probabilitas
    ```R
    n = 20
    p = 0.2

    # A
    x = 4
    probabilitas = dbinom(x, n, prob = p, log = FALSE)
    probabilitas
    ```
   
 - Untuk soal 2B gunakan hist untuk menggambarkan histogram
    ```R
    # B
    hist(rbinom(x, n, prob = p), xlab = "X", ylab = "Frekuensi", main = "Binomial Histogram")
    ```
    
 - Nilai rataan (μ) dan varian (σ²) dari distribusi Binomial
    ```R
    # C
    ratarata = n * (prob = p)
    varians = n * (prob = p) * (1 - (prob = p))
    ratarata
    varians 
    ```
    
 ss=
 ![image]

 

 </br>

 ## Soal 3
 
 - Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?
    ```R
    lambda = 4.5

    # Poin A
    x = 6
    probabilitas = dpois(x, lambda)
    probabilitas
    ```
   
 - buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama setahun (n = 365)
    ```R
    # Poin B
    x = 6
    n = 365
    hist(rpois(n, lambda), main = "Histogram Poisson")
    ```
    

 - Bandingkan hasil poin a dan b, apa kesimpulan yang bisa didapatkan?
 -
    B memakai n sebanyak 365 hari lalu dibuat histogramnya.
    
 - Nilai rataan (μ) dan varian (σ²) dari distribusi Poisson
    ```R
    # D
    ratarata = varians = lambda
    ratarata
    varians
    ```
   
ss=
![image]



 </br>

 ## Soal 4
 
 - Fungsi Probabilitas dari Distribusi Chi-Square.
    ```R
    x = 2
    v = 10

    # A
    probabilitas = dchisq(x, 10)
    probabilitas
    ```
    
 - Histogram dari Distribusi Chi-Square dengan 100 data random.
    ```R
    # B
    n = 100
    hist(rchisq(n, v), xlab = "X", ylab = "V", main = "Grafik Histogram")
    ```
    
 - Nilai Rataan (μ) dan Varian (σ²) dari DistribusiChi-Square.
    ```R
    # C
    ratarata = v
    varians = 2 * v
    ratarata
    varians
    ```
    
    
ss=
![image]


 </br>
 
 ## Soal 5
 - Fungsi Probabilitas dari distribusi Exponensial
    ```R
    lambda = 3

    # A
    set.seed(1)
    rnorm(1)
    probabilitas = dexp(1, rate = lambda)
    # probabilitas = rexp(1, rate = lambda)
    probabilitas
    ```
   

 - Histogram dari distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random
    ```R
    # B
    set.seed(1)
    hist(rexp(10, rate = lambda), main = "Histogram Exponetial with 10 Random Generations")
    hist(rexp(100, rate = lambda), main = "Histogram Exponetial with 100 Random Generations")
    hist(rexp(1000, rate = lambda), main = "Histogram Exponetial with 1000 Random Generations")
    hist(rexp(10000, rate = lambda), main = "Histogram Exponetial with 10000 Random Generations")

    ```
   
    

 - Nilai rataan (μ) dan varian (σ²) dari distribusi Exponensial untuk n = 100 dan λ = 3
    ```R
    # C
    n = 100
    set.seed(1)
    ratarata = mean(rexp(n, rate = lambda))
    varians = (sd(rexp(n, rate = lambda))) ^ 2
    ratarata
    varians
    ```
    
    
ss=
![image]
![image]


 </br>

 ## Soal 6

 - Fungsi Probabilitas dari distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score-nya dan plot data generate randomnya dalam bentuk grafik
    ```R
    n = 100
    mean = 50
    sd = 8

    # A
    set.seed(1)
    data <- rnorm(n, mean, sd)
    data
    summary(data)

    x1 = runif(1, min = min(data), max = mean)
    x2 = runif(1, min = mean, max = max(data))
    x1
    x2

    probabilitas1 <- pnorm(x1, mean, sd)
    probabilitas2 <- pnorm(x2, mean, sd)
    probabilitas1
    probabilitas2

    probabilitas <- probabilitas2 - probabilitas1
    plot(data)
    ```
    

 - Generate histogram dari distribusi Normal dengan breaks 50 
    ```R
    # B
    breaks = 50
    hist(data, breaks, main = "5025201085_Renita Caithleen Davita_Probstat F_DNhistogram")

    ```
    

 - Nilai varian (σ²) dari hasil generate random nilai distribusi Normal
    ```R
    # C
    varians = (sd(data)) ^ 2
    varians
    ```
  


ss=
![image]
![image]
![image]

</br>

## Penutup
Terima kasih atas perhatiannya. Kendala saat mengerjakan praktikum ini adalah karena waktu kurang bertabrakan dengan sisop.
    
