function plot_regression_result( Yp, Ya, flag_logistic_regreion, filename, title_str )

if flag_logistic_regreion == 1
	Yp = sigmoid( Yp );
end

%ńAĚ\ŞĘĚŞŁx
ds = degree_separation( Yp, Ya );
[ th acc ]= acc_separation( Yp, Ya );
MAE = mean(abs(Yp-Ya));

fig = figure
plot(Ya,Yp,'+b');
xlabel('answer')
ylabel('predict')
xlim([ -1 2 ])
grid on
title([ title_str ' ĹKčl=' num2str(th) ' ŞŢ¸x[%]=' num2str(acc*100) ])
saveas( fig, filename )
