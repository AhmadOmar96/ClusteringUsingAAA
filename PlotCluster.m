function PlotCluster(data, BestColony, Time, Iteration)
Centroids(1,1:4) = BestColony(1:4);
Centroids(2,1:4) = BestColony(5:8);
Centroids(3,1:4) = BestColony(9:12);

[ObjMin, Clusters]=amac_fonk_hesapla(BestColony, data);

 plot(Centroids(1,3), Centroids(1,4), 'ro',...
     Centroids(2,3), Centroids(2,4), 'bo',...
     Centroids(3,3), Centroids(3,4), 'mo',...
     data(Clusters == 1,3), data(Clusters == 1,4), 'r*',... 
     data(Clusters == 2,3), data(Clusters == 2,4), 'b*',...
     data(Clusters == 3,3), data(Clusters == 3,4), 'm*');
 
    xlabel('tac yaprak uzunlugu'); ylabel('tac yaprak genisligi');
    title(strcat('Time:', int2str(Time), '          Iteration:', int2str(Iteration), '        ObjMin: ', num2str(ObjMin)));
   
    legend('1.Kume Merkezi', '2.Kume Merkezi', '3.Kume Merkezi','1.Kume Elemanlari','2.Kume Elemanlari','3.Kume Elemanlari','Location','best');
    pause(0.5);
end
