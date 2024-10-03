CREATE DATABASE hayvan_fotografları;


CREATE TABLE hayvan_kategorileri (
    id SERIAL PRIMARY KEY,
    kategori_adi VARCHAR(50) NOT NULL
);


INSERT INTO hayvan_kategorileri (kategori_adi)
VALUES 
('Memeliler'),
('Sürüngenler'),
('Kuşlar'),
('Balıklar'),
('böcekler');

CREATE TABLE hayvan_fotograflari (
    id SERIAL PRIMARY KEY,
    dosya_adi VARCHAR(255) NOT NULL,
    hayvan_turu VARCHAR(50) NOT NULL,
    fotograf_yolu VARCHAR(255) NOT NULL,
    eklenme_tarihi TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    kategori_id INT,
    CONSTRAINT fk_kategori FOREIGN KEY (kategori_id) REFERENCES hayvan_kategorileri(id)
);

select * from hayvan_fotograflari
select * from hayvan_kategorileri
	
--memeliler
	
INSERT INTO hayvan_fotograflari (dosya_adi, hayvan_turu, fotograf_yolu, kategori_id)
VALUES ('Zürafa.jpg','Zürafa','https://drive.google.com/file/d/1OZVjU37DaGDe67Fig2KAIs-_WSqNkTQj/view?usp=drive_link',1),
 ('Yunus.jpeg','Yunus','https://drive.google.com/file/d/1wR2OUUcmZrv0rlyiQlxfeKG-T7DtBjoh/view?usp=drive_link',1),
 ('Yer Domuzu.jpeg','Yer Domuzu','https://drive.google.com/file/d/19QgwkbgkW-5rF_5b51rmwSH4iLy2Ymg7/view?usp=drive_link',1),
 ('Yarasa.jpeg','Yarasa','https://drive.google.com/file/d/1R92WA7C_c0AUdYl2NWfHvGHOGtAFi4OM/view?usp=drive_link',1),
 ('Yaban Domuzu.jpeg','Yaban Domuzu','https://drive.google.com/file/d/1XpUhZQl_kaaD5pGjytZcqJ_4eFqkN0Vr/view?usp=drive_link',1),
 ('Vikunya.jpg','Vikunya','https://drive.google.com/file/d/1rBFFh14oR4qdkcC2LHiMtJRG9F0twLMq/view?usp=drive_link',1),
 ('Vaşak.jpeg','Vaşak','https://drive.google.com/file/d/1DAwbwNxf9AQ8Bjsir8V51RMACQ_O3Awt/view?usp=drive_link',1),
 ('Tilki.jpeg','Tilki','https://drive.google.com/file/d/1z9CnsysnqNf9KXq6i0cBl7gXVNWHUNP0/view?usp=drive_link',1),
 ('Tembel Hayvan.jpeg','Tembel Hayvan','https://drive.google.com/file/d/1KBspRLNeS6mNvSW4q8F0TaIaB7AV7dQR/view?usp=drive_link',1),
 ('Tek Hörgüçlü Deve.jpg','Tek Hörgüçlü Deve','https://drive.google.com/file/d/1gyxpfnXWyRhIHkiziNGDTgXv35wipr7Z/view?usp=drive_link',1),
 ('Tavşan.jpeg','Tavşan','https://drive.google.com/file/d/1bN28pQtEef0paVH4wNJAM83SKmcQ1uSo/view?usp=sharing',1),
 ('Tapir.jpg','Tapir','https://drive.google.com/file/d/1uuoykykrRl0Q18yXBV-P8sRCz7XvNnT9/view?usp=drive_link',1),
 ('Su samuru.jpg','Su samuru','https://drive.google.com/file/d/1CVqHRkFg1NG18rgCnfmqc7bKTKi3OPYl/view?usp=drive_link',1),
 ('Su Aygırı.jpg','Su Aygırı','https://drive.google.com/file/d/1ePaWvenhwr4gFd0D_hcaVJaiVvTgPDAI/view?usp=drive_link',1),
 ('Sırtlan.jpeg','Sırtlan','https://drive.google.com/file/d/1QTr9kM_c9ObKHiywECsMH3H_qxhkEnLJ/view?usp=drive_link',1),
 ('Siyah Gergedan.jpeg','Siyah Gergedan','https://drive.google.com/file/d/1Wk227rFFkinbmeZjnc5b8eJxshaCkYCt/view?usp=drive_link',1),
 ('Sincap.jpg','Sincap','https://drive.google.com/file/d/1zzBt2pyjlAbFkbFn6oOGmtlIY3gWEXgi/view?usp=drive_link',1),
 ('Şifaka Lemuru.jpeg','Şifaka Lemuru','https://drive.google.com/file/d/1Ch0H8fZxsri9IzvrzC0PmznltMLixsEr/view?usp=drive_link',1),
 ('şempanze.jpeg','şempanze','https://drive.google.com/file/d/1bIxXmo4qbiMObw_bYepLf7cdltuLa8KX/view?usp=drive_link',1),
 ('Sansar.jpeg','Sansar','https://drive.google.com/file/d/1N0TDIrGhTuiocTPOwLkDMnN1YYNvuRRl/view?usp=drive_link',1),
 ('Samatra Gergedanı.jpg','Samatra Gergedanı','https://drive.google.com/file/d/1ZTPTgNOXYkkiTsPz4P_4woHdGx1CHZKs/view?usp=drive_link',1),
 ('Rakun.jpg','Rakun','https://drive.google.com/file/d/1r-_kmdBTwdFZOmDeBCILDUwa7BEKYXCN/view?usp=drive_link',1),
 ('Porsuk.webp','Porsuk','https://drive.google.com/file/d/11Ou6eNaTnYfe_acOS28Zt5dmIUK-0EMm/view?usp=drive_link',1),
 ('Pars.jpeg','Pars','https://drive.google.com/file/d/1BQV315kg0NwiR4TrGn-y3KW432-2KoNA/view?usp=drive_link',1),
 ('Panter.jpg','Panter','https://drive.google.com/file/d/1FvD59H2ColJUzU0mzTUxNaHLqhIscQby/view?usp=drive_link',1),
 ('Pangolin.jpg','Pangolin','https://drive.google.com/file/d/1D2NBi3KEXTNainU_sH8yL5f4rl8SwMBJ/view?usp=drive_link',1),
 ('Panda.jpeg','Panda','https://drive.google.com/file/d/1Fl89HRD7EMnanh2IrEJHKOj6vQCUb07Q/view?usp=drive_link',1),
 ('Orangutan.jpg','Orangutan','https://drive.google.com/file/d/1MTj2Xc3dXxjRtMEzDWSx14KmX3P2u0Jc/view?usp=drive_link',1),
 ('Okapi.jpeg','Okapi','https://drive.google.com/file/d/12YfXa9E5sKHn3Ko1fCxtkF_rjKNYsG7Q/view?usp=drive_link',1),
 ('Maymun.jpg','Maymun','https://drive.google.com/file/d/1Oz4K0UTIqMd5VMC3pqlkQOwZZhWOaDxa/view?usp=drive_link',1),
 ('Manda.jpg','Manda','https://drive.google.com/file/d/1s0hTMK9eOj1GvQpLc32dkpf4qOxYZhhC/view?usp=drive_link',1),
 ('Leopar.jpg','Leopar','https://drive.google.com/file/d/1DXVihdX7JRT7-kb1UDqbIJQjjk9hgUMS/view?usp=drive_link',1),
 ('Lama.jpg','Lama','https://drive.google.com/file/d/1wcPmU8kcID8_78SNRWBRhbbL1XaUyROa/view?usp=drive_link',1),
 ('Kutup Ayısı.jpeg','Kutup Ayısı','https://drive.google.com/file/d/1pC4XOiUOwVVOwDOe3J5EZonuQtNSN7ns/view?usp=drive_link',1),
 ('Kurt.jpeg','Kurt','https://drive.google.com/file/d/19fvCjFed3Px4nkYHJqngbILTUeszFS56/view?usp=drive_link',1),
 ('Kunduz.jpeg','Kunduz','https://drive.google.com/file/d/1SnpMRUMOli5vGcArIIrEIH2siT0_Z1K_/view?usp=drive_link',1),
 ('Koyun.jpg','Koyun','https://drive.google.com/file/d/14l5fyvOOzZGHIGQIxysT9n3P2whC_3tp/view?usp=drive_link',1),
 ('Köstebek.jpeg','Köstebek','https://drive.google.com/file/d/1Nvan-T89YIRue-MsFPKc-p30rzo5IJ9y/view?usp=drive_link',1),
 ('Köpek.jpeg','Köpek','https://drive.google.com/file/d/1jlDBrguQLsY5qOBl-bIqnVxZaMWCM7YD/view?usp=drive_link',1),
 ('Kokarca.jpeg','Kokarca','https://drive.google.com/file/d/1lJWRabFnE6sB2e964nraA1FtzSXwBL3q/view?usp=drive_link',1),
 ('Koala.jpeg','Koala','https://drive.google.com/file/d/1LWVSlwKJ7w-6EkrvLsdfcBFEaU35JXtW/view?usp=drive_link',1),
 ('Kızıl Panda.jpg','Kızıl Panda','https://drive.google.com/file/d/1e0CD-Z9XsO7lm8cfkLXuV0ONvd9pxpud/view?usp=drive_link',1),
 ('Kızıl geyik.jpg','Kızıl geyik','https://drive.google.com/file/d/1VEn6_-a2FI6WC9RvDySGWfwopbzQ9whh/view?usp=drive_link',1),
 ('Kirpi.jpeg','Kirpi','https://drive.google.com/file/d/1Uze3GHm5O8ZziYt54G0Hh4zmYbd8rFDf/view?usp=drive_link',1),
 ('Keseli Ceylan.jpg','Keseli Ceylan','https://drive.google.com/file/d/1f0lvra4gejdvhaPZ2PBOxrB9h75vICLP/view?usp=drive_link',1),
 ('Kedi.jpeg','Kedi','https://drive.google.com/file/d/1q_CPR6OsqwMXXn41mUvVxmZV3JtP6zrz/view?usp=drive_link',1),
 ('Keçi.jpg','Keçi','https://drive.google.com/file/d/1MqwAn2QNtzWZFwG_uVMK53EW1mTALsSR/view?usp=drive_link',1),
 ('Katır.jpg','Katır','https://drive.google.com/file/d/1_wu4nWK2OYHlDibIR4HT9mrE4g3VJBoa/view?usp=drive_link',1),
 ('Karıncayiyen.jpg','Karıncayiyen','https://drive.google.com/file/d/1q7U3Nbum9UqiTZfxuTXcLw7HYptP4IPd/view?usp=drive_link',1),
 ('Karakulak.jpeg','Karakulak','https://drive.google.com/file/d/1BwJyEc4UYKk_LxE3W5T4yEuWlQzOwWxd/view?usp=drive_link',1),
 ('Karaca.jpg','Karaca','https://drive.google.com/file/d/1OCU39pRuol9HTMso6XMC-36mWcrtjd-H/view?usp=drive_link',1),
 ('Kaplan.jpg','Kaplan','https://drive.google.com/file/d/1hNIc-UMXXqe5GG0TT80tP8JeyfRRS5hY/view?usp=drive_link',1),
 ('Kanguru.jpeg','Kanguru','https://drive.google.com/file/d/1FP-fDjc4zxQj4OAzSkGZNadT-8mAzxB1/view?usp=drive_link',1),
 ('Kambur Balina.jpeg','Kambur Balina','https://drive.google.com/file/d/1ZunVDxOcCHfyIiZAFYQjC59cHdoQsxl2/view?usp=drive_link',1),
 ('İnsan.jpg','İnsan','https://drive.google.com/file/d/1PxjMmfBJYhv7HncAMbYeGkgwqCbviW18/view?usp=drive_link',1),
 ('İnek.jpg','İnek','https://drive.google.com/file/d/19GWb4HiunA-y_GxJrMRCcVOwUDjcbqrn/view?usp=drive_link',1),
 ('Hint Gergedanı.jpg','Hint Gergedanı','https://drive.google.com/file/d/1g0443Vw1Wbzd2dAfd4_N3u9dkgLLTXxu/view?usp=drive_link',1),
 ('Halka Kuyruklu Lemur.jpeg','Halka Kuyruklu Lemur','https://drive.google.com/file/d/10RMYpM-EEoIzfeTP-UE9UBGpibL0rI4G/view?usp=drive_link',1),
 ('Goril.jpeg','Goril','https://drive.google.com/file/d/1apQSnR9bptqfwDmfC7Kf6Ty_USM3YrQJ/view?usp=drive_link',1),
 ('Gelincik.jpeg','Gelincik','https://drive.google.com/file/d/12Stm5ma43EwxqIJh6DffODAERSkXm4x6/view?usp=drive_link',1),
 ('Fok.jpg','Fok','https://drive.google.com/file/d/1QbQdUYxXULebtuW1zPpnVozKqc-CtMAK/view?usp=drive_link',1),
 ('Filfaresi.jpeg','Filfaresi','https://drive.google.com/file/d/18kDmGS5qMjlt1B4XXU1jNBlnmUTFdNex/view?usp=drive_link',1),
 ('Fil.jpg','Fil','https://drive.google.com/file/d/1a_Zc1N-C0OLO5zbO2_53g5ZjJWVbP1FQ/view?usp=drive_link',1),
 ('Fare.jpeg','Fare','https://drive.google.com/file/d/1Mrdovk1g3dT0bzD9vEBXmEliB2O1ENSI/view?usp=drive_link',1),
 ('Evcil Domuz.jpeg','Evcil Domuz','https://drive.google.com/file/d/1Wz_PjDPEECPOxUwgcVBCDnZbTSq0vcMt/view?usp=drive_link',1),
 ('Eşek.jpg','Eşek','https://drive.google.com/file/d/10Csx79RXvM-6LHheHWBms0JkmUEUeNY-/view?usp=drive_link',1),
 ('Düğmeli Domuz.jpeg','Düğmeli Domuz','https://drive.google.com/file/d/1v76wxKHU2A5rl7S2kOm1xd08nVhPrMS5/view?usp=drive_link',1),
 ('Deniz İneği.jpeg','Deniz İneği','https://drive.google.com/file/d/1JkLAnEmWj55MnwpBPqI3XgHZe8n5qZTS/view?usp=drive_link',1),
 ('Çift Hörgüçlü Deve.jpg','Çift Hörgüçlü Deve','https://drive.google.com/file/d/1MuIkVvYHzryTaJPjL_Ez3GIple4qnKDZ/view?usp=drive_link',1),
 ('Çakal.jpeg','Çakal','https://drive.google.com/file/d/1xx_rDFEdPu1fHi23AAzGm_zCtMOET32c/view?usp=drive_link',1),
 ('Bozayı.jpeg','Bozayı','https://drive.google.com/file/d/1Yt5RXNxFpNYxQnTw6hyp0YfgDDL2WIm4/view?usp=drive_link',1),
 ('Bizon.jpg','Bizon','https://drive.google.com/file/d/1cnuE8uUVP1WRE5pZbDnuuegpbtVhM7hN/view?usp=drive_link',1),
 ('Beyaz Balina.jpeg','Beyaz Balina','https://drive.google.com/file/d/1SPoIItHCmFqh-jBBMynb-o5w1mn6rAVf/view?usp=drive_link',1),
 ('At.jpeg','At','https://drive.google.com/file/d/13cQGC13vtbloFcF4rB6Y_gmoZPBstlj6/view?usp=drive_link',1),
 ('Aslan.jpg','Aslan','https://drive.google.com/file/d/1uQTYlbwKHn0zAfSRHNxuAFVfZ_ZPD60H/view?usp=drive_link',1),
 ('Armadillo.jpeg','Armadillo','https://drive.google.com/file/d/14v7beYi0NSK6NpMOwUBIWYZkWBsIkuJC/view?usp=drive_link',1),
 ('Antilop.jpg','Antilop','https://drive.google.com/file/d/1Ykwgq9tI7GjomThqShoFpVNJwxox01ZS/view?usp=drive_link',1),
 ('Alpaka.jpeg','Alpaka','https://drive.google.com/file/d/1oh8jpuG_R1efgqYRqfnU73nJf_oN9bge/view?usp=drive_link',1),
 ('Alageyik.jpg','Alageyik','https://drive.google.com/file/d/1NvWlKgFXyIL3wDJOYXWlvMLp1--MY2s8/view?usp=drive_link',1);

--sürüngenler


INSERT INTO hayvan_fotograflari (dosya_adi, hayvan_turu, fotograf_yolu, kategori_id)
VALUES ('yılan.jpg','Yılan', 'https://drive.google.com/file/d/1LGwM6XuN2n7vz1G8PjrXMBNb1ftVtRZv/view?usp=drive_link',2),
('tuatara.jpeg','Tuatara', 'https://drive.google.com/file/d/1H1-UvfXcF0JX-UrtKsogtlh6XuehKHNB/view?usp=drive_link',2),
('timsah.jpeg','Timsah', 'https://drive.google.com/file/d/1qJBfEF0L80KlR4rn7sMe7YiHSi6HiZ1L/view?usp=drive_link',2),
('kertenkele.jpeg','Kertenkele', 'https://drive.google.com/file/d/1F1sZ6rzonoS6gLvtX6AezTzH2KnTEZMQ/view?usp=drive_link',2),
 ('kaplumbağa.jpeg','Kaplumbağa', 'https://drive.google.com/file/d/1zOXBcJ-3I5Wvai26Tc89bKbVDKsbfkce/view?usp=drive_link',2);

--böcekler


INSERT INTO hayvan_fotograflari (dosya_adi, hayvan_turu, fotograf_yolu, kategori_id)
VALUES ('AğustosBöceği.jpeg','Ağustos Böceği','https://drive.google.com/file/d/1UrEeXPTNrZeaGbV34YXFlaaJ4xaxwati/view?usp=drive_link',5),
('Akrep.jpg','Akrep','https://drive.google.com/file/d/1kqPT_IprqwXmPmuUEp-yaxebGWJQUOeI/view?usp=drive_link',5),
('AteşBöceği.jpeg','Ateş Böceği','https://drive.google.com/file/d/1QOlf-GXzPLSE2RaLypQgOAgZB0cddkz2/view?usp=drive_link',5),
('BalArısı.jpg','Bal Arısı','https://drive.google.com/file/d/1wKam-eOla5mNpHNOEoGCeSako_yuwnxn/view?usp=drive_link',5),
('Bit.jpg','Bit','https://drive.google.com/file/d/1B-IBRxckbceO7-UnwdVyExb-MRUSw4ke/view?usp=drive_link',5),
('Çekirge.jpg','Çekirge','https://drive.google.com/file/d/1bMh5VCQ8hCdv_4fzVPdjfAHEqu29kdEM/view?usp=drive_link',5),
('EşekArısı.jpg','Eşek Arısı','https://drive.google.com/file/d/1c5q6kwd_WpjfN83A-pq1hduvUcodkCfN/view?usp=drive_link',5),
('Fare.jpg','Fare','https://drive.google.com/file/d/1EFZqjOgBjl17ZdzSy0YSmDxbgI5WJVii/view?usp=drive_link',5),
('gümüşçün.jpg','Gümüşçün','https://drive.google.com/file/d/1dndhTUrXuAeGWGzCc1omJVrmRQw9z1Mk/view?usp=drive_link',5),
('Güve.jpg','Güve','https://drive.google.com/file/d/1m3sgjk4rbuH8wh7_Nk8oOabPjoCz2GQa/view?usp=drive_link',5),
('HamamBöceği.jpg','Hamam Böceği','https://drive.google.com/file/d/1pm3roUq_Vkt1IGLHAw4JRK5h83wo_2NF/view?usp=drive_link',5),
('karafatma.jpg','Karafatma','https://drive.google.com/file/d/11TjF31_REKEFrhwC5em1kpcjsrfVhJGY/view?usp=sharing',5),
('karasinek.jpg','Kara Sinek','https://drive.google.com/file/d/1XLoUGcxM_ag7Law7mG5IeZxogjyqu5VZ/view?usp=drive_link',5),
('Karınca.jpg','Karınca','https://drive.google.com/file/d/1w8Vys3dD8YXz7cxUmdo9MWNCRTB7-3cp/view?usp=drive_link',5),
('Kelebek.jpg','Kelebek','https://drive.google.com/file/d/1_oeCXukVaSSWIWQhmLE2v4yIoCkXlMEc/view?usp=drive_link',5),
('Kene.jpg','Kene','https://drive.google.com/file/d/1ZyL6omB90LonRhU86M9jwUg_SbEd_p6r/view?usp=drive_link',5),
('Kırkayak.jpg','Kırkayak','https://drive.google.com/file/d/158nD2sxfnz3fEGpTFSmoWntTcJd4M8CL/view?usp=drive_link',5),
('Kulağakaçan.jpg','Kulağakaçan','https://drive.google.com/file/d/1PdGszP0QAiWfT5puclG-L_wpR77RQpyl/view?usp=drive_link',5),
('Kurbağa.jpg','Kurbağa','https://drive.google.com/file/d/1ekjVQO1u4iOzuui3QmUv9VzvkEd99l5q/view?usp=drive_link',5),
('meyvesineği.png','Meyvesineği','https://drive.google.com/file/d/1I7rB7z1YBxYt6mDXZKPAiZl-bvArOYpz/view?usp=drive_link',5),
('Örümcek.jpg','Örümcek','https://drive.google.com/file/d/1lYypP7O7rLqrqU6LNHFPV9P-YB5Io13u/view?usp=drive_link',5),
('PeygamberDevesi.jpg','Peygamber Devesi','https://drive.google.com/file/d/16bJYJRFQq2Yv6APIskGcSbGH23ZDVO5Y/view?usp=drive_link',5),
('Pire.jpg','Pire','https://drive.google.com/file/d/1mU_YRrHni6s6WkCskRN7IDoGs1rpUZlI/view?usp=drive_link',5),
('Salyangoz.jpg','Salyangoz','https://drive.google.com/file/d/15y9Ukwl0lbkREctGSyAP9emg_wSVW-Dz/view?usp=drive_link',5),
('Sivrisinek.jpg','Sivrisinek','https://drive.google.com/file/d/1y7Gqr1FvVZk48MspNasWG0orHlQdL6ea/view?usp=drive_link',5),
('Tarantula.jpeg','Tarantula','https://drive.google.com/file/d/1wggZ88zUC7VqydIrKFhRud5l-8Sy5ZFT/view?usp=drive_link',5),
('Tatarcık.jpg','Tatarcık','https://drive.google.com/file/d/1hUdxLSJjSH5OAo4Q3NumQYAlXyHu6Hbw/view?usp=drive_link',5),
('Termit.jpg','Termit','https://drive.google.com/file/d/1D8EeUaeCxZqszaLrW_ExCv3q2dYRl8FT/view?usp=drive_link',5),
('UğurBöceği.jpg','Uğur Böceği','https://drive.google.com/file/d/12LjUFfV9YH6GgRFOpyEedgyWbXyfSUxN/view?usp=drive_link',5),
('UyuzBöceği.jpg','Uyuz Böceği','https://drive.google.com/file/d/1CimQXFeW__NSxLm9boYv46ZF9ZaQaxSp/view?usp=drive_link',5),
('Yusufçuk.jpg','Yusufçuk','https://drive.google.com/file/d/1aywAzb4MzyH1TaWqcBiHuJ1kRVPG2EXP/view?usp=drive_link',5);


--kuşlar

INSERT INTO hayvan_fotograflari (dosya_adi, hayvan_turu, fotograf_yolu, kategori_id)
VALUES ('Afrotis.jpeg','Afrotis','https://drive.google.com/file/d/1SwT12UqvhIvEbzT-YJFTXDPmsxiDNgXJ/view?usp=drive_link',3),
	('Ak Kuyruklu Tropik Kuşu.jpeg','Ak Kuyruklu Tropik Kuşu','https://drive.google.com/file/d/15Flhvulr1jTQI0jTMITIkmrZ7CXtx_RG/view?usp=drive_link',3),
	('Alaca Baykuş.jpeg','Alaca Baykuş','https://drive.google.com/file/d/1Vs4uEja6j53nh1cxCdX2R_0OjuEgmro1/view?usp=drive_link',3),
	('Albatros.jpeg','Albatros','https://drive.google.com/file/d/1wCayo_bDD-4rNNTlan_xVfKi8KwnPnQ2/view?usp=drive_link',3),
	('Altın yağmur Kuşu.jpeg','Altın yağmur Kuşu','https://drive.google.com/file/d/1K5fwzU5QOkUMg2aY7bVVIchktpEiwCoI/view?usp=drive_link',3),
	('Angut Kuşu.jpeg','Angut Kuşu','https://drive.google.com/file/d/17KmIoFnshd_sZi4ih3TzsHgyoPPABDka/view?usp=drive_link',3),
	('Aynak.jpeg','Aynak','https://drive.google.com/file/d/1xuRZ4VvO1ZF72hyef2k9bvOopM55l-rd/view?usp=drive_link',3),
	('Bağırtlak.jpeg','Bağırtlak','https://drive.google.com/file/d/1bXHfDmzyUi_9-gKYpu0_v0-u9ibrDF4e/view?usp=drive_link',3),
	('Balaban Kuşu.jpeg','Balaban Kuşu','https://drive.google.com/file/d/1fe985oUnTpRCjVKHas_PeVmXn1ddstAy/view?usp=drive_link',3),
	('Balıkçıl Kuşu.jpeg','Balıkçıl Kuşu','https://drive.google.com/file/d/1nZEjIUg9fj4Wrl7wDzHfRITThmUUYzMH/view?usp=drive_link',3),
	('Beç Tavuğu.jpg','Beç Tavuğu','https://drive.google.com/file/d/1l5mjDCiPNB4L6NvMzGbfuKpRHUXEGMHb/view?usp=drive_link',3),
	('Benekli Düdükçün.jpeg','Benekli Düdükçün','https://drive.google.com/file/d/12nOXBIaDYaxac5yzwB4W2J6ZpbrnfX4E/view?usp=drive_link',3),
	('Bıldırcın.jpeg','Bıldırcın','https://drive.google.com/file/d/1DHImFq2MVuU_EMYCfkgOuyk3vG_GfcVg/view?usp=drive_link',3),
	('Borozan Kuşu.jpeg','Borozan Kuşu','https://drive.google.com/file/d/1EJJyxldP0RiNxx6t_6E0Uv70g39Vko3e/view?usp=drive_link',3),
	('Büyük Kıngaga Kuşu.webp','Büyük Kıngaga Kuşu','https://drive.google.com/file/d/1U1J4VHXKpWDLQNL53jCtIZVR0htWgpAU/view?usp=drive_link',3),
	('Büyük Kum Kuşu.jpeg','Büyük Kum Kuşu','https://drive.google.com/file/d/1ZbO9SlCHQJhCUwnv2bZQMz0SiSViupUn/view?usp=drive_link',3),
	('Çamur Çulluğu.jpeg','Çamur Çulluğu','https://drive.google.com/file/d/1UvkpZvKdQQ2nWQJnwvoMmLASG46XNpcd/view?usp=drive_link',3),
	('Çekiç Başlı.jpeg','Çekiç Başlı','https://drive.google.com/file/d/1g5oaJciWz_kZ8Unlk3r_fbZg68Zgohqw/view?usp=drive_link',3),
	('Çizgili Baykuş.jpeg','Çizgili Baykuş','https://drive.google.com/file/d/1J0FS0kw8FqbUo8lj_-B9j7klnPolQh7x/view?usp=drive_link',3),
	('Çığlıkçıl.jpeg','Çığlıkçıl','https://drive.google.com/file/d/1y13kwN1ROQZttSKv8J_y1OcHhO-KplTK/view?usp=drive_link',3),
	('Çöl Koşarı.jpeg','Çöl Koşarı','https://drive.google.com/file/d/1BvytYh_pYVWOfTORWQjLoJMzs9u3mXDe/view?usp=drive_link',3),
	('Crowned Pigeon.jpeg','Crowned Pigeon','https://drive.google.com/file/d/18wc6MHilUPEsvJBcB2OgwEMp7mRazNeu/view?usp=drive_link',3),
	('Cüce Tepeli Devekuşu.jpeg','Cüce Tepeli Devekuşu','https://drive.google.com/file/d/13Px8vslG_XxqyhNyZTi1g42Vu1hKM3DU/view?usp=drive_link',3),
	('Dalıcımartı.jpeg','Dalıcımartı','https://drive.google.com/file/d/1PiXG9Ex-gxLc0q-v084mFAnOb7WWtKnP/view?usp=drive_link',3),
	('Dere Düdükçünü.jpeg','Dere Düdükçünü','https://drive.google.com/file/d/1DZf0AkdHus4t0fqyGy42q9Dt0GP_OmF3/view?usp=drive_link',3),
	('Devekuşu.jpeg','Devekuşu','https://drive.google.com/file/d/1zFUZLcG781gILr9rQ46GZjDsUwGip9De/view?usp=drive_link',3),
	('Doğan.jpeg','Doğan','https://drive.google.com/file/d/1C3OP4RqMwPZFJGTzUcGEXmjMOvwWqRYQ/view?usp=drive_link',3),
	('Ebabil Kuşu.jpeg','Ebabil Kuşu','https://drive.google.com/file/d/1tX8C1oBIIwfyZ6jocEF7eSghbO7xtVUp/view?usp=drive_link',3),
	('Fırtına Kuşu.jpeg','Fırtına Kuşu','https://drive.google.com/file/d/1Tjj1wlXA_GP_RumuaPX8e8WYdIEDKcK3/view?usp=drive_link',3),
	('Flamingo.jpeg','Flamingo','https://drive.google.com/file/d/11m5Em17ijQZfoGQLY-dwc_VB6874DAUy/view?usp=drive_link',3),
	('Fregat Kuşu.jpeg','Fregat Kuşu','https://drive.google.com/file/d/1n5MA4Mu1CbF79O-eGXkV1R7H6N3JwzIP/view?usp=drive_link',3),
	('Fulmar.jpeg','Fulmar','https://drive.google.com/file/d/1kqy0Tjz92c341y3mWDBF3U6cpjgDjQ8E/view?usp=drive_link',3),
	('Guguk Kuşu.jpeg','Guguk Kuşu','https://drive.google.com/file/d/1QgRFQ5jM-2nmIV5rtcYQjIDbZATteopd/view?usp=drive_link',3),
	('Güneş Balabanı.jpeg','Güneş Balabanı','https://drive.google.com/file/d/1chWBFDCmFOajWcHZoSPfjnENpHBWVBQe/view?usp=drive_link',3),
	('Güvercin.jpeg','Güvercin','https://drive.google.com/file/d/16gHvZn9hdyo4gX4teX5OmG4Zp-2H9K1U/view?usp=drive_link',3),
	('Hindi.jpg','Hindi','https://drive.google.com/file/d/13f5wCbvPGXdQno4z2XmH_EuHjKjNDwQ6/view?usp=drive_link',3),
	('Hoatzin Kuşu.jpeg','Hoatzin Kuşu','https://drive.google.com/file/d/1b0-18WvECuxS6snIsS-jFGp91rVQEaHe/view?usp=drive_link',3),
	('Jakana.jpg','Jakana','https://drive.google.com/file/d/1cayPQoBKnI8jDGV8B9yAJjxWwegqp3iZ/view?usp=drive_link',3),
	('Kagu.jpeg','Kagu','https://drive.google.com/file/d/1m9y-mgE_GS35eKl_Ms36C1WaVDscayEb/view?usp=drive_link',3),
	('Kanarya.jpeg','Kanarya','https://drive.google.com/file/d/1jBJZ2tYTbf1JIdX6tbFjKT8ukN8BJIOm/view?usp=drive_link',3),
	('Kara Boyunlu Batağan.jpeg','Kara Boyunlu Batağan','https://drive.google.com/file/d/1AADWYhs3caaOr1ZEqZHX9eBx_0mZHW8Z/view?usp=drive_link',3),
	('Kara Gerdanlı Dalgıç Kuşu.jpeg','Kara Gerdanlı Dalgıç Kuşu','https://drive.google.com/file/d/1uEu6x4xugNiL_GiG7OJnhtamYulZ95Ps/view?usp=drive_link',3),
    ('Karabatak Kuşu.jpeg','Karabatak Kuşu','https://drive.google.com/file/d/1VANC-GGZqrSCf81x7696OmFFOajq8Bsx/view?usp=drive_link',3),
	('Karacagöz.jpg','Karacagöz','https://drive.google.com/file/d/1uW_AVbee-tR6p3ypIQ2MvaeLEm0zc3lM/view?usp=drive_link',3),
	('Karga.jpeg','Karga','https://drive.google.com/file/d/1562Gwb_5dExyhbW-f4Spfwneq57wRLYv/view?usp=drive_link',3),
	('Kartal.jpeg','Kartal','https://drive.google.com/file/d/1ZYh1SopBVnAcIqD0cjRPavDCHnrDtRtn/view?usp=drive_link',3),
	('Kaşıkçı Kuşu.jpeg','Kaşıkçı Kuşu','https://drive.google.com/file/d/1Qy3H5QW5Z4u-nX20rtW_Fu7G0OQ8Emgr/view?usp=drive_link',3),
	('Kaz.jpeg','Kaz','https://drive.google.com/file/d/1wE5HUmEKM_wGFef7641qPrqI-H3UJL1D/view?usp=drive_link',3),
	('keklik.jpg','keklik','https://drive.google.com/file/d/1IQM_RGT3HX2l3xgV_FBTlHBwqxNxyJ0t/view?usp=drive_link',3),
	('Kelaynak Kuşu.jpeg','Kelaynak Kuşu','https://drive.google.com/file/d/1V1GdZiOVWnYjQAxgmA-CKo41r-qiIFn-/view?usp=drive_link',3),
	('Kivi Kuşu.jpeg','Kivi Kuşu','https://drive.google.com/file/d/1xhvsX9rLsmITYfPpG3-JXhh1LenRqHqf/view?usp=drive_link',3),
	('Kılıçgaga Kuşu.jpeg','Kılıçgaga Kuşu','https://drive.google.com/file/d/1adyRb_Bzgxk1fdDYmvyd9-cazUDt8_eX/view?usp=drive_link',3),
	('Kırlangıç Kuşu.jpeg','Kırlangıç Kuşu','https://drive.google.com/file/d/1x-h2uWSQhKsQ1iwNcY8hebn3IaOCuvH2/view?usp=drive_link',3),
	('Kısa Kuyruklu Bataklık Kırlangıcı.jpeg','Kısa Kuyruklu Bataklık Kırlangıcı','https://drive.google.com/file/d/1-lyvvLIH3kb87qECoPRL5cabzeZPaOAd/view?usp=drive_link',3),
	('Kız Kuşu.jpg','Kız Kuşu','https://drive.google.com/file/d/1JgG_Bs_VmPtSajNqMSUkhRdz1V6_FrvF/view?usp=drive_link',3),
	('Kızıl Aynak.jpeg','Kızıl Aynak','https://drive.google.com/file/d/1a2euLTA__OzJKwu6GKwz1ybVZpJUeL44/view?usp=drive_link',3),
	('Kızıl İbikli Kız Kuşu.jpeg','Kızıl İbikli Kız Kuşu','https://drive.google.com/file/d/1vyMyinPo6iiXcxqyELY7w-Nf6cs9gkDP/view?usp=drive_link',3),
	('Kızıl Bacak.jpeg','Kızıl Bacak','https://drive.google.com/file/d/1ISpPf8A73XKAnpCXdngbEIiPaRW8dh94/view?usp=drive_link',3),
	('Kral Penguen.jpeg','Kral Penguen','https://drive.google.com/file/d/1U02mtxgHz8LRXu2Mc0oUFPactlHAt_n1/view?usp=drive_link',3),
	('Kraliyet Pengueni.jpeg','Kraliyet Pengueni','https://drive.google.com/file/d/1FGOswNWcumLQffDMZhiPJtJJxPuSUFqu/view?usp=drive_link',3),
	('Küçük Batağan.jpeg','Küçük Batağan','https://drive.google.com/file/d/1k8j0CkTgqs_MtTyOa75dJCXAHspk38oB/view?usp=drive_link',3),
	('Küçük Kıngaga Kuşu.jpeg','Küçük Kıngaga Kuşu','https://drive.google.com/file/d/1N_WDRAE91tq7xh0o9pdYq-H1iTq0-Ya4/view?usp=drive_link',3),
	('Kuğu.jpg','Kuğu','https://drive.google.com/file/d/1ix3VmYKglZyT0wB4mikYyvL932JKqAIh/view?usp=drive_link',3),
	('Kumru.jpeg','Kumru','https://drive.google.com/file/d/15RYXaiPYMZrnic25Pu-tC5BYgJiDMx8a/view?usp=drive_link',3),
	('Kutup Korsan Martısı.jpeg','Kutup Korsan Martısı','https://drive.google.com/file/d/1s8fpotqCVHzlFD_mQpWk2Tfow4VHjGhg/view?usp=drive_link',3),
	('Kutup Martısı.jpeg','Kutup Martısı','https://drive.google.com/file/d/1fIOKwah_WJtlekhDDqqPx1ZaKveZjPdy/view?usp=drive_link',3),
	('Leylek.jpeg','Leylek','https://drive.google.com/file/d/12Y7MyBZMLcuRSQhXaRP8AVH24wwiRoWj/view?usp=drive_link',3),
	('Limosa.jpeg','Limosa','https://drive.google.com/file/d/1P4gp_iIrmThBRXN8VKejgDidO7EF5hfv/view?usp=drive_link',3),
	('Marabu.jpeg','Marabu','https://drive.google.com/file/d/1VUg00WNP9X19axdldjru5V1RY2_hPKlL/view?usp=drive_link',3),
	('Martı.jpeg','Martı','https://drive.google.com/file/d/1A-LKwCKI1bQUvfAY-xKqurh8TNCL24Wc/view?usp=drive_link',3),
	('Mavi Ayaklı Sümsük Kuşu.jpeg','Mavi Ayaklı Sümsük Kuşu','https://drive.google.com/file/d/1qLNMSZ7GFU4BN0eTUncNL4_-Jibn050E/view?usp=drive_link',3),
	('Mor Kum Kuşu.jpeg','Mor Kum Kuşu','https://drive.google.com/file/d/1HL7kcqOC9-hUhL7PVMXrew4p3Xa5qyKV/view?usp=drive_link',3),
	('Muhabbet Kuşu.jpeg','Muhabbet Kuşu','https://drive.google.com/file/d/1-nEgej8D4x9D0EZPPJ7LVFtmHLp_Rgxc/view?usp=drive_link',3),
	('Nandu.jpeg','Nandu','https://drive.google.com/file/d/1b8IsvWBQnAH0hpf2kv9PfxRygS9SXeys/view?usp=drive_link',3),
	('Ördek.jpeg','Ördek','https://drive.google.com/file/d/16b5vXPipRJvcXHvdnt8GEsuHcqY_ySJD/view?usp=drive_link',3),
    ('Pabuç Gagalı.jpeg','Pabuç Gagalı','https://drive.google.com/file/d/1IHQlmOXZjS_m3jmvLRB4bP4HcwLAiIYR/view?usp=drive_link',3),
	('Papağan.png','Papağan','https://drive.google.com/file/d/1_eU42NXtVHMasWJQR7O7vySRCMXdsIN4/view?usp=drive_link',3),
	('Pelikan.jpeg','Pelikan','https://drive.google.com/file/d/1Solvcr13Uxfx1CqER7xEctV7zi5MNJ6h/view?usp=drive_link',3),
	('Poyraz Kuşu.jpg','Poyraz Kuşu','https://drive.google.com/file/d/1lKci1qRDTG-G2Ip-ldylZUMYzsW1m0ST/view?usp=drive_link',3),
	('Rostratulidae.jpeg','Rostratulidae','https://drive.google.com/file/d/1Sn_0MdBYktTBzldD0C3j_luWlsf4WcT-/view?usp=drive_link',3),
	('Şahin.jpeg','Şahin','https://drive.google.com/file/d/10d8Jq3eX4k70VFtcSpCa-U8ZpIVXgnTe/view?usp=drive_link',3),
	('Saksağan.jpeg','Saksağan','https://drive.google.com/file/d/1pLdjC6CLvOOuYFyGNecOuKxffdGIdPD_/view?usp=drive_link',3),
	('Saz Tavuğu.jpeg','Saz Tavuğu','https://drive.google.com/file/d/1CjWa9tRIMnluBZ4IIw-aaphvnRu6hGg7/view?usp=drive_link',3),
	('Serçe.jpeg','Serçe','https://drive.google.com/file/d/1Db3puW_mcpeDp0KIHkpp2Os0-DXSgTnl/view?usp=drive_link',3),
	('Sinek Kuşu.jpeg','Sinek Kuşu','https://drive.google.com/file/d/1CrV7uv0BfcCOSy7YQWKuAFomRzcqKr-x/view?usp=drive_link',3),
	('Su Çulluğu.jpeg','Su Çulluğu','https://drive.google.com/file/d/1fC5hnyq_1PlsFXatld1IGbRcaVNZMoFW/view?usp=drive_link',3),
	('Sultan Papağanı.jpeg','Sultan Papağanı','https://drive.google.com/file/d/1x5Vue8CAJKaq96xoYob43Buo4QHBJVfa/view?usp=drive_link',3),
	('Sülün.jpg','Sülün','https://drive.google.com/file/d/12tqHUnQPZilOZVuO5Ka4vholkXDuYHi7/view?usp=drive_link',3),
	('Sumru.jpeg','Sumru','https://drive.google.com/file/d/1OQGUNBCGfoPB5SFPs3Nii9mWFDJk8SeW/view?usp=drive_link',3),
	('Sümsük Kuşu.jpeg','Sümsük Kuşu','https://drive.google.com/file/d/1cg9kbMJQRoQqTF3ycl-cCjHQk2_KGnwh/view?usp=drive_link',3),
	('Tavuk.jpg','Tavuk','https://drive.google.com/file/d/1Dktb0VcxMDGH54QCRBT9qpROJID1PSP9/view?usp=drive_link',3),
	('Tavus Kuşu.jpg','Tavus Kuşu','https://drive.google.com/file/d/1BAxf0wNaByLfDg4tZ3xhu8JA88DT-QlX/view?usp=drive_link',3),
	('Tepeli Devekuşu.jpeg','Tepeli Devekuşu','https://drive.google.com/file/d/134_3QrkB0qV-fpR-oDf-WhB4O89c3Aur/view?usp=drive_link',3),
	('Tepeli Güvercin.jpeg','Tepeli Güvercin','https://drive.google.com/file/d/1FDCjBgw7RNGEu9ordzVw_bk4PnzsSnuj/view?usp=drive_link',3),
	('Tinamu.jpeg','Tinamu','https://drive.google.com/file/d/15s6n1nzLb79-_sr0E2Pr6nXyFhSG0QPW/view?usp=drive_link',3),
	('Toy.jpeg','Toy','https://drive.google.com/file/d/1CEVxu-vioXb6W1-NH51BSKs7-XcHjfye/view?usp=drive_link',3),
	('Turna Kuşu.jpeg','Turna Kuşu','https://drive.google.com/file/d/1g7jOPuM-gyGImYGeWngciwV3H4k0eQG0/view?usp=drive_link',3),
	('Üveyik.jpeg','Üveyik','https://drive.google.com/file/d/18xiNb0kHz3bbpOUNYdOBe5rG_bGZ_3BK/view?usp=drive_link',3),
	('Uzun Bacak Kuşu.jpeg','Uzun Bacak Kuş','https://drive.google.com/file/d/1ql5U7HppH8Jo4Bk6bKczW3zsjTPIJaek/view?usp=drive_link',3),
	('Uzun Kuyruklu Düdükçün.jpeg','Uzun Kuyruklu Düdükçün','https://drive.google.com/file/d/10NkgJ7hyoiw6QFxTP2_1OH64LAhQMIci/view?usp=drive_link',3),
	('Uzun Kuyruklu Korsan Martı.jpeg','Uzun Kuyruklu Korsan Martı','https://drive.google.com/file/d/1nyHSUhWxxgrimiagTV1FBCJ82ffNN9rh/view?usp=drive_link',3),
	('Yağ Kuşu.jpeg','Yağ Kuşu','https://drive.google.com/file/d/1ueJKPLYjcPqPZT_OpLB7al62suRMtxq0/view?usp=drive_link',3),
	('Yelkovan Kuşu.jpeg','Yelkovan Kuşu','https://drive.google.com/file/d/1m9jgwYwPLQ2qf1I08-24vw4iiImOmvBV/view?usp=drive_link',3),
	('Yengeç Yağmur Kuşu.jpeg','Yengeç Yağmur Kuşu','https://drive.google.com/file/d/14HHeV_rvQ_shIrMb9Ssw-VRImsjW422g/view?usp=drive_link',3),
	('Yılanboyun.jpeg','Yılanboyun','https://drive.google.com/file/d/1MUST_LBWrBTM9jqqqnAWsZjY2E-bveIM/view?usp=drive_link',3);
	

--balıklar
INSERT INTO hayvan_fotograflari (dosya_adi, hayvan_turu, fotograf_yolu, kategori_id)
VALUES ('Alabalık.jpg','Alabalık','https://drive.google.com/file/d/1-1baUZ6HvCsnhVlhCfcGtC3Vek9B5FgA/view?usp=drive_link',4),
('Barbun.jpg','Barbun','https://drive.google.com/file/d/156KvfGvQDQMEbw81XELYn7srguoc0yYY/view?usp=drive_link',4),
('Benekli Kaya Balığı.jpg','Benekli Kaya Balığı','https://drive.google.com/file/d/179_sZ-ghCar9mRaJfxBap0zxRLlL7ukR/view?usp=drive_link',4),
('Betta.jpg','Betta','https://drive.google.com/file/d/1ex_YeBsyO3neAUmS_9S_cxL-PqJ-hsth/view?usp=drive_link',4),
('Çipura.jpg','Çipura','https://drive.google.com/file/d/1Ob2ez1-TtmsWSdT_w4v-qudui9Sye2c4/view?usp=drive_link',4),
('Dil Balığı.jpg','Dil Balığı','https://drive.google.com/file/d/1MH5TUjyqYyl0VDBZGdCoPy0nQUQy5YiK/view?usp=drive_link',4),
('Gümüş.jpg','Gümüş','https://drive.google.com/file/d/1JbaYHU5Z8GpPv5oUE7o0TrqUXHmQwaNp/view?usp=drive_link',4),
('Hamsi.jpg','Hamsi','https://drive.google.com/file/d/1YkFnB9fTI_xZybCXBvi01_NtLtrovMbM/view?usp=drive_link',4),
('İskorpit.jpg','İskorpit','https://drive.google.com/file/d/1-WrEd5jB3Z-DQp3voQVD5uiOC0TtugeK/view?usp=drive_link',4),
('İstavrit.jpg','İstavrit','https://drive.google.com/file/d/1TA1eyI5xSScuowKl3unrhKSyIpx_w4Di/view?usp=drive_link',4),
('Japon.jpg','Japon','https://drive.google.com/file/d/1qhv7h_2mpxrbqmj0zQu_WCXHA7ckbya5/view?usp=drive_link',4),
('Kalamar.jpeg','Kalamar','https://drive.google.com/file/d/1OCspSfaSokXHNjXSdyn42jCiszBfrfg-/view?usp=drive_link',4),
('Kalkan.jpg','Kalkan','https://drive.google.com/file/d/1MH8Hz7ZbvBEME740BW2tyqmeLSXA8f_g/view?usp=drive_link',4),
('Kılıç.jpg','Kılıç','https://drive.google.com/file/d/1FQyhtukhruuOBAymWKK0pULz8Q9HqW0H/view?usp=drive_link',4),
('Lepistes.jpg','Lepistes','https://drive.google.com/file/d/1y9zl-6mDuNRYasV4NsESjDn2C3P6kiNG/view?usp=drive_link',4),
('Levrek.png','Levrek','https://drive.google.com/file/d/1cs4PkTvkxL-Y4y27XlZWU0ZVtK42mse0/view?usp=drive_link',4),
('Lüfer.png','Lüfer','https://drive.google.com/file/d/1QmfLUcK4TZ8zf6wf9sHMjtYqpvGx5_J_/view?usp=drive_link',4),
('Mercan.jpg','Mercan','https://drive.google.com/file/d/1aaD4D8twRJHElf4mD3GY6pbBC2EAFw1z/view?usp=drive_link',4),
('Neon.jpg','Neon','https://drive.google.com/file/d/1i8Ev7tbP1RR17oGt_jI9IBCAnnQYcOUI/view?usp=drive_link',4),
('Palamaut.png','Palamaut','https://drive.google.com/file/d/1r6KauDGHmiBCp_DWKtpyFKkrwwpq1W0R/view?usp=sharing',4),
('papağan balığı.jpg','papağan balığı','https://drive.google.com/file/d/1OqE8SDOUxmidmBHxd-4AqX6ZLa1hgyWi/view?usp=drive_link',4),
('Sardalya.jpg','Sardalya','https://drive.google.com/file/d/1UAOdw1yuW3pNJTA2e5TgXiT_JCDqZfqV/view?usp=drive_link',4),
('Sarı Prenses.jpg','Sarı Prenses','https://drive.google.com/file/d/1eayGbZlK7C57JWWKBzJToOQJHNlu5cfj/view?usp=drive_link',4),
('sazan.jpg','sazan','https://drive.google.com/file/d/1UjNnZ-TY7mtFhdn83NZeUvkgC1Ugr81K/view?usp=drive_link',4),
('Somon.jpg','Somon','https://drive.google.com/file/d/1wrCGInoSL_13_UQoBsuaf0F6Vmort8oh/view?usp=drive_link',4),
('Uskumru.jpg','Uskumru','https://drive.google.com/file/d/1hXuOrZ_2-JRPRrDf9-orPiskTLP8WSZg/view?usp=drive_link',4),
('Vatoz.jpg','Vatoz','https://drive.google.com/file/d/1_JVBhJqgoicsZkQd4MB-LKEUnxRkxjez/view?usp=drive_link',4),
('Yayın.jpg','Yayın','https://drive.google.com/file/d/1V1Pu00edEBF28X4wIZVFiHOFjucSqPd5/view?usp=drive_link',4),
('Yılan balığı.jpg','Yılan balığı','https://drive.google.com/file/d/1_hRfAEek7L8GIYZNFw951AYbji5oR7Q6/view?usp=drive_link',4);

select * from hayvan_kategorileri
ALTER TABLE hayvan_kategorileri
ADD COLUMN  klasör_yolu VARCHAR(255)

UPDATE hayvan_kategorileri
SET "klasör_yolu" ='https://drive.google.com/drive/folders/1hEm5e4njSgfMY5WYCYg9Hgf8at7WGa21?usp=drive_link'
WHERE id = 1

UPDATE hayvan_kategorileri
SET "klasör_yolu" ='https://drive.google.com/drive/folders/1xqZ-gyNJXnU4ETSA_7Gq9204tv38hv5s?usp=drive_link'
WHERE id = 2
	
UPDATE hayvan_kategorileri
SET "klasör_yolu" ='https://drive.google.com/drive/folders/1omC-st7fMAgg2FAyrMA4euSbdbMaiHng?usp=drive_link'
WHERE id = 3
	
UPDATE hayvan_kategorileri
SET "klasör_yolu" ='https://drive.google.com/drive/folders/1x3TV4kwcSXPJjH4L6TdcLN2lrfrB9xie?usp=drive_link'
WHERE id = 4
	
UPDATE hayvan_kategorileri
SET "klasör_yolu" ='https://drive.google.com/drive/folders/11Mpc7PjSLGXSIWVvhazYeR3EJnRqmZFk?usp=drive_link'
WHERE id = 5