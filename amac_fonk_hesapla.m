function [uygunluk_degeri, clusters] = amac_fonk_hesapla(colonies, data)
uygunluk_degeri = 0;

row = size(data,1);

k = 3;
centroids(1,1:4) = colonies(1:4);
centroids(2,1:4) = colonies(5:8);
centroids(3,1:4) = colonies(9:12);

        for i = 1: row
            for j = 1: k
                distance(j,1) = sqrt(sum((data(i,:) - centroids(j,:)).^2));                
            end
            [uzaklik, cluster_ind] = min(distance);
            clusters(i,1) = cluster_ind;
            uygunluk_degeri = uygunluk_degeri + uzaklik;
        end

        if(size(unique(clusters),1) ~= k)
            uygunluk_degeri = Inf;
            %uygunluk_degeri = 1543;
            %uygunluk_degeri = (1500-1000)*rand('double')+1000;
        end            
end

