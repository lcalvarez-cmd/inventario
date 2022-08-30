package inventario.tabla;

import inventario.modelo.Proveedor;
import java.util.ArrayList;
import javax.swing.table.AbstractTableModel;


public class TablaModelo extends AbstractTableModel {
    final String[] columnNames = {"ID_PROVEEDOR","NIT", "NOMBRE", "TELEFONO,DIRECCION"};
    private ArrayList<Proveedor> list = new ArrayList<>();

    public void addProveedor(Proveedor autor) {
        list.add(autor);
        //Notifica a los listeners que se ha insertado un nuevo dato 
        //en el rango [firstRow, lastRow]
        fireTableRowsInserted(list.size() - 1, list.size() - 1);
    }

    @Override
    public int getRowCount() {
        return list.size();
    }

    @Override
    public int getColumnCount() {
        return columnNames.length;
    }

    @Override
    public Object getValueAt(int rowIndex, int columnIndex) {
        Proveedor autor = list.get(rowIndex);
        switch (columnIndex) {
            case 0:
                return autor.getId_proveedor();
            case 1:
                return autor.getNombre();
            case 2:
                return autor.getNit();
            case 3:
                return autor.getDatos();
            default:
                return null;
        }
    }

    @Override
    public String getColumnName(int col) {
        return columnNames[col];
    }

    @Override
    public boolean isCellEditable(int row, int col) {
        return false;
    }
}
