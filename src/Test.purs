module Test where

import React.Basic (ReactComponent)

type TestProps =
  { path :: String
  }

foreign import test:: ReactComponent TestProps

