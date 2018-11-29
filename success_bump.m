% Read triggering histories and see if bump remains
filenameout = 'success_bump.txt';
fileIDout = fopen(filenameout,'w');
BFG = [];
for i=1:length(Velocity)
   cd(num2str(i))
   filename = strcat(num2str(i),'NeuronV_8.txt');
   fileID = fopen(filename,'r');
   formatSpec = '%d';
   BFG = fscanf(fileID,formatSpec);
   for j=1:length(BFG)
       fprintf(fileIDout,'%d %d\n',i,BFG(j));
   end
   cd ..
   %pause(1)
   fclose(fileID);
end
fclose(fileIDout);