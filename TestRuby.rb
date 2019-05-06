#!/usr/bin/ruby -w

# Array ini berisi pertanyaan
$pertanyaan = ["bkuu", "irot", "sibe", "basun", "sinpel", "lonag", "kosden", "takej", "liumtes", "kisat igig"]

# Array ini berisi jawaban
$jawaban = ["buku", "roti", "besi", "sabun", "pensil", "galon", "sendok", "jaket", "selimut", "sikat gigi"]

# Array ini urutan pertanyaan yang akan di random ketika game dimulai 
$randomPertanyaan = [0,1,2,3,4,5,6,7,8,9].to_a.shuffle

# Variable ini untuk menampung skor pada game
$skor = 0

# Variable untuk mencatat level
$level = 1

# Variable untuk Looping
$i = 0

# Memberi tahu User level ketika pertama kali game dimulai
puts "Anda Sekarang level #{$level}"

# While akan looping hingga indeks terbesar array pertanyaan
while $i <= $pertanyaan.length - 1

	# Menampilkan pertanyaan dari array pertanyaan dengan indeks yang sudah di random
	puts "Tebak Kata ini : #{$pertanyaan[$randomPertanyaan[$i]]}"

	# Menerima inputan User tanpa New Line
	$Jawab = gets.chomp

	# Membandingkan jawaban dengan hasil input user
	if $jawaban[$randomPertanyaan[$i]] == $Jawab
		# Jika jawaban benar, maka skor bertambah 1
		$skor = $skor + 1
		# Lalu memberitahu poin user saat ini
		puts "BENAR!..point anda #{$skor}"

		# Mengecek jika poin User saat ini habis dibagi 2, maka level User akan naik
		if $skor%2 == 0
			$level = $level + 1
			puts "Selamat..! Sekarang Anda di level #{$level}"
		end
		# Menaikkan nilai Variable untuk looping, sehingga lanjut ke pertanyaan berikutnya(yang berbeda)
		$i = $i + 1
	else
		# Jika jawaban salah, akan tampil pesan jawaban salah, dan akan menampilkan lagi pertanyaan yang sama untuk dicoba
		puts "Jawaban Anda SALAH!, Silakan coba lagi"
		
	end
	
end



