# webp-converter

MacOS veya Linux cihazlarında öncelikle yapılması gereken cwebp paketini kurmak. Bunun içinde en kolay yol brew ile aşağıdaki komutu kullanmak:

```brew install webp```

Sonrasında resimlerin bulunduğu dizine webp.sh'ı oluşturup yada indirip aşağıdaki komut ile tüm görselleri hızlı şekilde convert edebilirsiniz. 

```sh webp.sh ```

------

compressed-webp.sh dosyası olarak yeni bir güncelleme yaptım. 

Bunda ise 1 MB ve üstü görsellerde daha iyi performans alabilmek için öncesinde imagemagick'den faydalandım.

```brew install imagemagick```

ile makinenize kurun bu paketi. Sonrasında

```sh compressed-webp.sh```

ile işlemi tamamlayın.
