import React, { ReactNode } from 'react'

const Layout = ({children}: {children: ReactNode}) => {
  return (
    <div className='pt-20'>

       <div className='w-[95%] mx-auto'> {children}</div>
      
    </div>
  )
}

export default Layout
