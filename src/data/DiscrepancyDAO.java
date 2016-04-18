package data;

import java.util.ArrayList;
import java.util.List;

public interface DiscrepancyDAO {
	
	public List<Discrepancy> getDiscByWorkCenter(String wc);

	public List<Discrepancy> getDiscByStatus(String status);
	
	public List<Discrepancy> showAll();
	
	public Discrepancy getDiscByMcn(Integer mcn);
	
	public String getAircraftStatus();

	public void addDiscrepancy(Discrepancy discrepancy);
	
	public List<Discrepancy> updateDisc(Discrepancy discrepancy);
	
	public List<Discrepancy> deleteDisc(Integer mcn);
	

	
	
	
}
