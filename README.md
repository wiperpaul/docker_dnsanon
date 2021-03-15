# docker_dnsanon
Docker Container for dnsanon

#### Disclaimer
`dnsanon` is not mine and is an ANT software tool from Liang Zhu & John Heidemann.

Full Documentation can be found below
https://ant.isi.edu/software/dnsanon/index.html

Container also contains `perl-Fsdb` which allows for the conversion of fsdb files to csv in this manner:

```
cat $fsdb | db_to_csv > $fsdb".csv"
```
