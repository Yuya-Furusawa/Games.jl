module Games

# Packages

# 0.5 compatibility
import Compat.view

# Type aliases #
typealias PureAction Integer
typealias MixedAction{T<:Real} Vector{T}
typealias Action{T<:Real} Union{PureAction,MixedAction{T}}
typealias PureActionProfile{N,T<:PureAction} NTuple{N, T}
typealias MixedActionProfile{T<:Real,N} NTuple{N,MixedAction{T}}
typealias ActionProfile Union{PureActionProfile,MixedActionProfile}

# package code goes here
include("normal_form_game.jl")
include("pure_nash.jl")


export Player, NormalFormGame,  # Types

       # Type aliases
       Action, MixedAction, PureAction, ActionProfile,

       # Normal form game functions
 	   best_response, best_responses, is_best_response, payoff_vector,
       is_nash, pure2mixed, pure_strategy_NE,

       # General functions
       num_players, num_actions, num_opponents,

       # Nash Equilibrium
       pure_nash

end # module
