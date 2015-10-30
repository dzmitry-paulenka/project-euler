package utils.pairs;

public class LongIntPair implements Comparable<LongIntPair> {
    public final long a;
    public final int b;

    private final int hashCode;

    public LongIntPair(long a, int b) {
        this.a = a;
        this.b = b;
        hashCode = new Long(a+b).hashCode();
    }

    public int hashCode() {
        return hashCode;
    }

    public boolean equals(Object obj) {
        if (super.equals(obj)) return true;

        if ( !(obj instanceof LongIntPair) ) return false;
        LongIntPair p = (LongIntPair)obj;

        return a==p.a && b==p.b;
    }

    public int compareTo(LongIntPair p) {
        int ret = (a < p.a) ? -1 : (a==p.a ? 0 : 1);
        if (ret != 0) return ret;
        return (b < p.b) ? -1 : (b==p.b ? 0 : 1);
    }

    public String toString() {
        return "[" + a + ", " + b + "]";
    }
}
