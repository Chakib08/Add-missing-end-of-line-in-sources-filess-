echo "Start addding missing EOL"
echo "Add EOL in .cpp files..."
find -name \*.cpp
find -name \*.cpp | while read f; do tail -n1 $f | read -r _ || echo >> $f; done
echo ""
echo "Add EOL in .h files..."
find -name \*.h
find -name \*.h | while read f; do tail -n1 $f | read -r _ || echo >> $f; done
echo ""
find -name \*.hpp
echo "Add EOL in .hpp files..."
find -name \*.hpp | while read f; do tail -n1 $f | read -r _ || echo >> $f; done
echo "End of adding missing EOL"
