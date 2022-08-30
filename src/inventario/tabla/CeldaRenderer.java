package inventario.tabla;

import inventario.modelo.DatosContacto;
import java.awt.Component;
import java.util.ArrayList;
import javax.swing.JTable;
import javax.swing.table.AbstractTableModel;
import javax.swing.table.TableCellRenderer;



public class CeldaRenderer implements TableCellRenderer{
    private int alturaMinima = -1;
    private int alturaActual = -1;

    @Override
    public Component getTableCellRendererComponent(JTable table, Object value, boolean isSelected, boolean hasFocus, int row, int column) {

        //si el valor recibido es un array
        if (value instanceof ArrayList) {
            ArrayList<DatosContacto> libros = (ArrayList<DatosContacto>) value;
          
            //de acuerdo al tamaño de la lista de libros
            //se ajusta la altura de la subtabla
            if (alturaMinima == -1) {
                alturaMinima = table.getRowHeight();
            }
            
            if (!libros.isEmpty()) {
                if (alturaActual != libros.size() * alturaMinima) {
                    alturaActual = libros.size() * alturaMinima;
                    table.setRowHeight(row, alturaActual);                    
                }
            }
            //fin ajustes de altura de subtabla
            
            //El objeto devuelto sera un JTable
            return new JTable(new AbstractTableModel() {

                //sabemos que el numero de columnas de nuestra
                //sub tabla es de 2
                final int cols = 2;

                @Override
                public int getColumnCount() {
                    return cols;
                }

                @Override
                public int getRowCount() {
                    return libros.size();
                }

                @Override
                public Object getValueAt(int rowIndex, int columnIndex) {                    
                    DatosContacto libro = libros.get(rowIndex);
                    switch (columnIndex) {
                        case 0:
                            return libro.getTelefono();
                        case 1:
                            return libro.getDireccion();
                        default:
                            return null;
                    }
                }

                @Override
                public boolean isCellEditable(int row, int col) {
                    return false;
                }

            });

        } else {//no hacemos nada
            return table.getDefaultRenderer(value.getClass())
                    .getTableCellRendererComponent(table, value, isSelected, hasFocus, row, column);
        }
    }
}
