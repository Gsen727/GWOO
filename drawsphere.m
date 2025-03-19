function drawsphere(a,b,c,R,useSurf)
    % 以(a,b,c)为球心，R为半径
    if (nargin<5)
        useSurf = false;
    end

    % 生成数据
    [x,y,z] = sphere(20);

    % 调整半径
    x = R*x; 
    y = R*y;
    z = R*z;

    % 调整球心
    x = x+a;
    y = y+b;
    z = z+c;
    
    if useSurf
        % 使用surf绘制
        axis equal;
        surf(x,y,z);
        hold on
    else
        % 使用mesh绘制
        axis equal;
        mesh(x,y,z);
        hold on
    end
end
