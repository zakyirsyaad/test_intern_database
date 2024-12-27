UPDATE mahasiswa
SET alamat = 'Jl. Raya No.5'
WHERE nim = '123456';

SELECT 
    m.nim, 
    m.nama AS nama_mahasiswa, 
    m.jurusan, 
    d.nama AS nama_dosen_pembimbing
FROM mahasiswa m
JOIN dosen d ON m.dosen_pembimbing_id = d.id
WHERE m.jurusan = 'Teknik Informatika';

SELECT nama, umur
FROM mahasiswa
ORDER BY umur DESC
LIMIT 5;

SELECT 
    m.nama AS nama_mahasiswa, 
    mk.nama AS nama_mata_kuliah, 
    n.nilai
FROM nilai n
JOIN mahasiswa m ON n.mahasiswa_id = m.id
JOIN mata_kuliah mk ON n.mata_kuliah_id = mk.id
WHERE n.nilai > 70;
