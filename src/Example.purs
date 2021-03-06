module Example where

import Prelude

import React.Basic (ReactComponent, createElement, react)
import React.Basic.DOM as R
import React.Basic.Events as Events
import Test (test)

type ExampleProps =
  { label :: String
  }

type ExampleState =
  { counter :: Int
  }

example :: ReactComponent ExampleProps
example = react
  { displayName: "Example"
  , initialState
  , receiveProps
  , render
  }
  where
    initialState :: ExampleState
    initialState = { counter: 0 }
    receiveProps _ _ _ = pure unit

    render { label } { counter } setState =
      let
        hello =
          R.h1 { children: [ R.text "Hello World" ]}
        button =
          R.button
            { onClick: Events.handler_ (setState \s -> s { counter = s.counter + 1}) 
            , children:
                [ R.text (label <> ": " <> show counter)
                ]
            }
      in
        R.div
          { children:
              [ hello
              , createElement test { path: "Handsome"}
              , button
              ]
          }
