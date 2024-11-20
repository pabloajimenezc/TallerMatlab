function [w_max, ia_max, va_max, mse_w] = ExperimentosM3C(params)

set_param("SimulacionMCC/PI w", 'P', num2str(params.P), 'I', num2str(params.I))
out = sim("SimulacionMCC.slx");
w = out.w.data;
w_ref = out.w_ref.data;
ia = out.ia.data;
va = out.va.data;

w_max = max(w);
ia_max = max(ia);
va_max = max(va);
mse_w = mse(w_ref, w);
end

