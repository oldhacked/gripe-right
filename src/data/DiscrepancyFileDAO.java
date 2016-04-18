package data;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;

public class DiscrepancyFileDAO implements DiscrepancyDAO {
	private static final String FILE_NAME = "/WEB-INF/gripeList.csv";

	private List<Discrepancy> discrepancies = new ArrayList<>();
	/*
	 * Use Autowired to have Spring inject an instance of an ApplicationContext
	 * into this object after creation. We will use the ApplicationContext to
	 * retrieve an InputStream so we can read from a file.
	 */
	@Autowired
	private ApplicationContext ac;

	/*
	 * The @PostConstruct method is called by Spring after object creation and
	 * dependency injection
	 */
	@PostConstruct
	public void init() {
		System.out.println("test");
		// Retrieve an input stream from the application context
		// rather than directly from the file system
		try (InputStream is = ac.getResource(FILE_NAME).getInputStream();
				BufferedReader buf = new BufferedReader(new InputStreamReader(is));) {
			String line = buf.readLine();
			while ((line = buf.readLine()) != null) {

				String[] tokens = line.split(",");
				Integer mcn = Integer.parseInt(tokens[0].trim());
				String workCenter = tokens[1].toLowerCase();
				String system = tokens[2];
				String gripe = tokens[3];
				String discrepancy = tokens[4];
				String resolution = tokens[5];
				String status = tokens[6];
				Integer hours = Integer.parseInt(tokens[7].trim());
				String jobStat = tokens[8];
				String startDate = tokens[9];
				String endDate = tokens[10];

				discrepancies.add(new Discrepancy(mcn, workCenter, system, gripe, discrepancy, resolution, status,
						hours, jobStat, startDate, endDate));
			}
		} catch (Exception e) {
			System.err.println(e);
		}
	}

	@Override
	public Discrepancy getDiscByMcn(Integer mcn) {
		Discrepancy d = null;
		for (Discrepancy disc : discrepancies) {
			if (disc.getMcn().equals(mcn)) {
				d = disc;
				break;
			}
		}
		return d;
	}

	@Override
	public List<Discrepancy> showAll() {

		return discrepancies;

	}

	@Override
	public void addDiscrepancy(Discrepancy discrepancy) {
		discrepancies.add(discrepancy);
	}

	@Override
	public List<Discrepancy> getDiscByWorkCenter(String wc) {

		List<Discrepancy> sorted = new ArrayList();
		if (!wc.equals(" ")) {
			for (Discrepancy disc : discrepancies) {
				if (wc.equals(disc.getWorkCenter())) {
					sorted.add(disc);

				}
			}
		} else {
			sorted = showAll();
			System.out.println(sorted);
		}
		return sorted;
	}

	@Override
	public List<Discrepancy> getDiscByStatus(String stat) {
		List<Discrepancy> sorted = new ArrayList<>();
		if (!stat.equals(" ")) {
			for (Discrepancy disc : discrepancies) {
				if (stat.equals(disc.getStatus())) {
					sorted.add(disc);

				}
			}
		} else {
			sorted = showAll();
			System.out.println(sorted);
		}

		return sorted;
	}

	public String getAircraftStatus() {
		String status = null;
		List<String> statList = new ArrayList<>();
		for (Discrepancy disc : discrepancies) {

			statList.add(disc.getStatus());

			System.out.println(disc.getStatus());

		}

		if (statList.contains(0)) {
			status = "D";

		} else if (statList.contains(1)) {
			status = "P";

		} else {
			status = "U";

		}

		return status;
	}

	@Override
	public List<Discrepancy> updateDisc(Discrepancy discrepancy) {
		Discrepancy oldDisc = new Discrepancy();
		for (Discrepancy disc : discrepancies) {
			if (discrepancy.getMcn().equals(disc.getMcn())) {
				oldDisc = disc;
				break;
			}
		}

		discrepancies.set(discrepancies.indexOf(oldDisc), discrepancy);
		return discrepancies;
	}

	@Override
	public List<Discrepancy> deleteDisc(Integer mcn) {

		

		System.out.println("im inside DAO this is passed in object" + mcn);

		Iterator<Discrepancy> discIt = discrepancies.iterator();

		while (discIt.hasNext()) {
			Discrepancy d = discIt.next();
			System.out.println("d.getMcn=" + d.getMcn());

			if (mcn.equals(d.getMcn())) {
				discIt.remove();

			}
		}

		return discrepancies;
	}
	
	

	

}
