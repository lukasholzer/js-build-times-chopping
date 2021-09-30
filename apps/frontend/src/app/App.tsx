import { FunctionComponent } from 'preact';
import { PIZZA_TOPPINGS } from '@viennajs/menus/pizza';
import './App.css';

export const App: FunctionComponent = () => {
  return (
    <div className='app'>
      <h1>hello Vienna.js 👋</h1>
      {/* {JSON.stringify(PIZZA_TOPPINGS, null, 2)} */}
    </div>
  );
};
