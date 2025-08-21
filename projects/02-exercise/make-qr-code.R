# R can make QR codes!

library(qrcode)
library(ragg)

code <- qr_code("https://excen.gsu.edu/flyer")

generate_svg(code, filename = "qr_code.svg", show = FALSE)

agg_png("qr_code.png", width = 1000, height = 1000, res = 300)
plot(code)
invisible(dev.off())
