SET client_min_messages TO WARNING;
\set ECHO none

with a as(
 select st_geomfromtext('POLYGON((-432540.453078056 4949775.20452642,-432329.947920966 4951361.232584,-431245.028163694 4952223.31516671,-429131.071033529 4951768.00415574,-424622.07505895 4952843.13503987,-423688.327170174 4953499.20752423,-424086.294349759 4954968.38274191,-423068.388925945 4954378.63345336,-423387.653225542 4953355.67417084,-420594.869840519 4953781.00230592,-416026.095299382 4951484.06849063,-412483.018546414 4951024.5410983,-410490.399661215 4954502.24032205,-408186.197521284 4956398.91417441,-407627.262358013 4959300.94633864,-406948.770061627 4959874.85407739,-404949.583326472 4959047.74518163,-402570.908447199 4953743.46829807,-400971.358683991 4952193.11680804,-403533.488084088 4949649.89857885,-406335.177028373 4950193.19571096,-407790.456731515 4952391.46015616,-412060.672398345 4950381.2389307,-410716.93482498 4949156.7509561,-408464.162289794 4943912.8940387,-409350.599394983 4942819.84896006,-408087.791091424 4942451.6711778,-407274.045613725 4940572.4807777,-404446.196589102 4939976.71501489,-402422.964843936 4940450.3670813,-401010.654464241 4939054.8061663,-397647.247369412 4940679.80737878,-395658.413346901 4940528.84765185,-395536.852462953 4938829.79565997,-394268.923462818 4938003.7277717,-393388.720249116 4934757.80596815,-392393.301362444 4934326.71675815,-392573.527618037 4932323.40974412,-393464.640141837 4931903.10653605,-393085.597275686 4931094.7353605,-398426.261165985 4929156.87541607,-398261.174361137 4926238.00816416,-394045.059966834 4925765.18668498,-392982.960705174 4926391.81893628,-393090.272694301 4927176.84692181,-391648.240010564 4924626.06386961,-391889.914625075 4923086.14787613,-394345.177314013 4923235.086036,-395550.878718795 4917812.79243978,-399009.463978251 4912927.7157945,-398948.794855767 4911941.91010796,-398092.636652078 4911806.57392519,-401991.601817112 4911722.9204501,-406225.972607907 4914505.47286319,-411104.994569885 4912569.26941163,-412925.513522316 4913030.3608866,-414630.148884835 4914436.69169949,-414207.691417276 4919205.78028405,-418306.141109809 4917994.9580478,-424184.700779621 4918938.12432889,-426816.961458921 4923664.37379373,-420956.324227126 4923381.98014807,-420186.661267781 4924286.48693378,-420943.411166194 4926812.76394433,-419779.45457046 4928527.43466337,-419768.767899344 4930681.94459216,-421911.668097113 4930432.40620397,-423482.386112205 4933451.28047252,-427272.814773717 4934151.56473242,-427144.908678797 4939731.77191996,-428982.125554848 4940522.84445172,-428986.133056516 4942437.17281266,-431237.792396792 4947309.68284815,-432476.889648814 4947791.74800037,-432540.453078056 4949775.20452642))', 3857) as g
)
SELECT st_astext(CDB_PIA(g)) from a;