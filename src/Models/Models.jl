module Models

export
    IncompressibleModel, NonDimensionalIncompressibleModel, ShallowWaterModel,
    HydrostaticFreeSurfaceModel, VectorInvariant,
    ExplicitFreeSurface, ImplicitFreeSurface,
    HydrostaticSphericalCoriolis, VectorInvariantEnstrophyConserving,
    PrescribedVelocityFields

using Oceananigans: AbstractModel

abstract type AbstractIncompressibleModel{TS} <: AbstractModel{TS} end

include("IncompressibleModels/IncompressibleModels.jl")
include("HydrostaticFreeSurfaceModels/HydrostaticFreeSurfaceModels.jl")
include("ShallowWaterModels/ShallowWaterModels.jl")

using .IncompressibleModels: IncompressibleModel, NonDimensionalIncompressibleModel
using .ShallowWaterModels: ShallowWaterModel

using .HydrostaticFreeSurfaceModels:
    HydrostaticFreeSurfaceModel, VectorInvariant,
    ExplicitFreeSurface, ImplicitFreeSurface,
    HydrostaticSphericalCoriolis,
    VectorInvariantEnstrophyConserving, VectorInvariantEnergyConserving,
    PrescribedVelocityFields

end
