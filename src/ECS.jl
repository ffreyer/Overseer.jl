module ECS
    using Parameters

    abstract type ComponentData end

    abstract type AbstractComponent{T<:ComponentData} end

    abstract type System end

    abstract type AbstractManager end

    include("indices.jl")
    include("entity.jl")
    include("component.jl")
    include("system.jl")
    include("manager.jl")

    export AbstractManager, Manager, System, SystemStage, Component, SharedComponent, Entity
    export @component, @shared_component, @component_with_kw, @shared_component_with_kw
    export @entities_in

    export update_systems, schedule_delete!, delete_scheduled!, empty_entities!, system_stage

end # module
