benign = readmatrix("benignfull.csv")
malignant = readmatrix("malignantfull.csv")

zeros = readmatrix("MNISTzeros.csv");
ones = readmatrix("MNISTones.csv");

b_first_col = benign(:,1)
b_second_col = benign(:,2)

m_first_col = malignant(:,1)
m_second_col = malignant(:,2)

figure(1)
hold off
scatter(b_first_col,b_second_col,"filled",'b')
hold on
scatter(m_first_col,m_second_col,"filled",'r')
hold on
gaussiancontour(b_first_col,b_second_col, 'b')
hold on
gaussiancontour(m_first_col,m_second_col, 'r')
hold on

title("Part A")
legend("Benign","Malignant")
xlabel('x')
ylabel('y')

%visualize2d(benign, malignant)
visualize2d(zeros, ones)


