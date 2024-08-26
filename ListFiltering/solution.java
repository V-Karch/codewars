package ListFiltering;

import java.util.List;

public class solution {
    public static List<Object> filterList(final List<Object> list) {
        return list.stream().filter(i -> !i.getClass().getSimpleName().equals("String")).toList();
    }
}
