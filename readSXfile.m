%% Code snippet to read VPSC infile. 

pname = 'C:\Users\victoria.miller\Documents\GitHub\Random-VPSC-MTEX-code-snippets\Sample Files to Read';
fname_in = [pname filesep 'zr_293K.sx'];

infile = fopen(fname_in);


%% get header information
tline = fgetl(infile); %1
matName = sscanf(tline, 'Material: %s');
tline = fgetl(infile); %2
crySym = sscanf(tline, '%s            crysym');
    if strcompi(crySym,'HEXAGONAL')
        mfmt = '%i %i %i %i %i %i %i %i';
    else 
        mfmt = '%i %i %i %i %i %i';
    end
tline = fgetl(infile); %3
temp = sscanf(tline, '%f %f %f %f %f %f %*s', 6);
    crystalAxes = temp(1:3);
    crystalAngle = temp(4:6);
tline = fgetl(infile); %4 text
    C = zeros(6);
tline = fgetl(infile); %5 
    C(1,:) = sscanf(tline, '%f %f %f %f %f %f %*s', 6);
tline = fgetl(infile); %6 
    C(2,:) = sscanf(tline, '%f %f %f %f %f %f %*s', 6);
tline = fgetl(infile); %7 
    C(3,:) = sscanf(tline, '%f %f %f %f %f %f %*s', 6);
tline = fgetl(infile); %8 
    C(4,:) = sscanf(tline, '%f %f %f %f %f %f %*s', 6);
tline = fgetl(infile); %9 
    C(5,:) = sscanf(tline, '%f %f %f %f %f %f %*s', 6);
tline = fgetl(infile); %10 
    C(6,:) = sscanf(tline, '%f %f %f %f %f %f %*s', 6);
tline = fgetl(infile); %11 text
tline = fgetl(infile); %12 
    alpha = sscanf(tline, '%f %f %f %f %f %f %*s', 6);


%% Slip/twin system info

tline = fgetl(infile); %13 text
tline = fgetl(infile); %14
    nModesTotal = sscanf(tline, '%i %*s', 1);
tline = fgetl(infile); %15
    nModesActive = sscanf(tline, '%i %*s', 1);
tline = fgetl(infile); %16 
    activeModes = sscanf(tline,varLengthStrFormat(nModesActive),nModesActive);

modeX = zeros(nModesTotal,1);
nsmX = zeros(nModesTotal,1);
iOpSysX = zeros(nModesTotal,1);
iTwTypeX = zeros(nModesTotal,1);
    
for i = 1:nModesTotal
    
    
    for j = 1:

    
        
    end
end

fclose(infile)



