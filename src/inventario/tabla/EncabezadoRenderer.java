package inventario.tabla;

import java.awt.Component;
import java.awt.GridLayout;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTable;
import javax.swing.SwingConstants;
import javax.swing.border.BevelBorder;
import javax.swing.border.SoftBevelBorder;
import javax.swing.table.TableCellRenderer;

public class EncabezadoRenderer extends JPanel implements TableCellRenderer{
    public EncabezadoRenderer() {
        setLayout(new GridLayout());
    }

    @Override
    public Component getTableCellRendererComponent(JTable table, Object value,
            boolean isSelected, boolean hasFocus, int row, int column) {
        String[] str = value.toString().split(",");
        removeAll();
        for (String s : str) {
            JLabel label = new JLabel();
            label.setBorder(new SoftBevelBorder(BevelBorder.RAISED));
            label.setHorizontalAlignment(SwingConstants.CENTER);
            label.setText(s);
            add(label);
        }
        return this;
    }
    
}
