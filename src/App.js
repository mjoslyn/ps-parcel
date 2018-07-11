import React from 'react'

import Loadable from 'react-loadable';

const Loading = () => <div>Loading</div>

const LoadableComponent = Loadable({
  loader: () => import('../output/Example').then(x => {console.log(x);return x.example}),
  loading: Loading,
})

export default ({children}) => <div>HI<div>{children}<LoadableComponent/></div></div>