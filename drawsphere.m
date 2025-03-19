function drawsphere(a,b,c,R,useSurf)
    % ��(a,b,c)Ϊ���ģ�RΪ�뾶
    if (nargin<5)
        useSurf = false;
    end

    % ��������
    [x,y,z] = sphere(20);

    % �����뾶
    x = R*x; 
    y = R*y;
    z = R*z;

    % ��������
    x = x+a;
    y = y+b;
    z = z+c;
    
    if useSurf
        % ʹ��surf����
        axis equal;
        surf(x,y,z);
        hold on
    else
        % ʹ��mesh����
        axis equal;
        mesh(x,y,z);
        hold on
    end
end
