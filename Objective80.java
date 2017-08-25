package pigudf;

import java.io.IOException;
import org.apache.pig.FilterFunc;
import org.apache.pig.data.Tuple;

public class Objective80 extends FilterFunc{
	
	public Boolean exec(Tuple input) throws IOException {
		try {
		int value1 = (int)input.get(0);
		int value2 = (int)input.get(1);
		
		double objective = value1 * 0.8;
		
		if(value1 > value2 && objective <= value2)
			return true;
		return false;
		
		}
		catch (Exception e) {
			throw new IOException(e);
		}
	}

}
