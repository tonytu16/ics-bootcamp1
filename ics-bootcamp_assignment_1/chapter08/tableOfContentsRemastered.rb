contents = ['Table of Contents',1,'Getting started',1,2,'Numbers',9,3,'Letters',13]
width_1 = 40
width_2 = 5
puts (('     '+contents[0].to_s).center(width_1))
i = 0
while (i<3)
  number = contents[i*3+1].to_s
  title = contents[i*3+2].to_s
  page = contents[i*3+3].to_s
  puts(('Chapter' + number + ':' + title).ljust(width_1) + 'page' + page.rjust(width_2))
  i+=1
end
#In this program, an array is created that inclues all the page numbers, titles and chapter numbers, and is arranged in such a special way that similar information can be printed using one call expression
#creating a frame that has its original width and a width of 5
#int i is defined as 0 at the beginning
#while integer i is less than 10, the cycle of title, chapter and page number will be generated
#each time one line is printed, i is increased by 1