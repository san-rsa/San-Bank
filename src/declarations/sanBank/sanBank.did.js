export const idlFactory = ({ IDL }) => {
  return IDL.Service({
    'add' : IDL.Func([IDL.Float64], [], ['oneway']),
    'balance' : IDL.Func([], [IDL.Float64], ['query']),
    'compoundInterest' : IDL.Func([], [], ['oneway']),
    'sub' : IDL.Func([IDL.Float64], [], ['oneway']),
  });
};
export const init = ({ IDL }) => { return []; };
