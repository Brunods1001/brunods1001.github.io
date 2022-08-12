# This file was generated, do not modify it. # hide
using ImageShow, FileIO, ImageIO, Colors, Plots
url = "https://user-images.githubusercontent.com/6933510/107239146-dcc3fd00-6a28-11eb-8c7b-41aaf6618935.png"

philip_filename = download(url) # download to a local file. The filename is returned
philip = load(philip_filename)
philip_html = philip

plot(philip_html)
savefig(joinpath(@OUTPUT, "philip.svg"))