using Plots; plotlyjs()

dataNum = 100

toArr = range(0, 2π, length = dataNum)
ρoArr = range(0, 2π, length = dataNum)

tpArr = range(-20, 20, length = dataNum)
ρpArr = range(-20, 20, length = dataNum)

xRange = 20
yRange = 20

# Axis lines
plot!(tpArr, fill(0, dataNum), fill(0, dataNum))
plot!(fill(0, dataNum), tpArr, fill(0, dataNum))

# Parametric Equation of a Plane P
camPos = 10
planeAngle = π/12
Xp(t, ρ) = camPos - t*cot(planeAngle)
Yp(t, ρ) = t
Zp(t, ρ) = ρ

XpArr = [Xp(t, ρ) for t in tpArr, ρ in ρpArr]
YpArr = [Yp(t, ρ) for t in tpArr, ρ in ρpArr]
ZpArr = [Zp(t, ρ) for t in tpArr, ρ in ρpArr]

surface(XpArr, YpArr, ZpArr,
    xlabel = "X",
    ylabel = "Y",
    xlims = (-xRange, xRange),
    ylims = (-yRange, yRange),
    aspect_ratio = :equal
)

# Parametric Equation for the Object
Xo(t, ρ) = 4*cos(t) - sin(ρ)*cos(t)
Yo(t, ρ) = 4*sin(t) - sin(ρ)*sin(t)
Zo(t, ρ) = cos(ρ)

XoArr = [Xo(t, ρ) for t in toArr, ρ in ρoArr]
YoArr = [Yo(t, ρ) for t in toArr, ρ in ρoArr]
ZoArr = [Zo(t, ρ) for t in toArr, ρ in ρoArr]

surface!(XoArr, YoArr, ZoArr)