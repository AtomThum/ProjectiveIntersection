using Plots; plotlyjs()

Xo(t, ρ) = 4*cos(t) - sin(ρ)*cos(t)
Yo(t, ρ) = 4*sin(t) - sin(ρ)*sin(t)
Zo(t, ρ) = cos(ρ)

tArr = range(0, 2π, length = 50)
ρArr = range(0, 2π, length = 50)

XoArr = [Xo(t, ρ) for t in tArr, ρ in ρArr]
YoArr = [Yo(t, ρ) for t in tArr, ρ in ρArr]
ZoArr = [Zo(t, ρ) for t in tArr, ρ in ρArr]

surface(XpArr, YpArr, ZpArr, aspect_ratio=:equal,
    xlabel = "X",
    ylabel = "Y",
    aspect_ratio=:equal
)