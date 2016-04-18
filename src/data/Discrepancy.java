package data;

public class Discrepancy {
	
	//fields
	private Integer mcn;        //0/maintenance control number
	private String workCenter;  //1/ shop
	private String system;		//2/system subgroup
	private String gripe;		//3/title of the problem
	private String discrepancy;	//4/description of the problem 
	private String resolution;	//5/problem solution 
	private String status;		//6/0 is down, 1 is partial, 2 is up (
	private Integer hours;		//7/man hours documented
	private String jobStat;		//8/current job status
	private String startDate;  //9/start date
	private String endDate;	  //10/end date
	
	
	//constructors
	public Discrepancy(){
	}


	public Discrepancy(Integer mcn, String workCenter, String system, String gripe, String discrepancy, String resolution,
			String status, Integer hours, String jobStat, String startDate, String endDate) {
		super();
		this.mcn = mcn;
		this.workCenter = workCenter;
		this.system = system;
		this.gripe = gripe;
		this.discrepancy = discrepancy;
		this.resolution = resolution;
		this.status = status;
		this.hours = hours;
		this.jobStat = jobStat;
		this.startDate = startDate;
		this.endDate = endDate;
	}

	
	//gets n sets

	public Integer getMcn() {
		return mcn;
	}





	public void setMcn(Integer mcn) {
		this.mcn = mcn;
	}


	public String getWorkCenter() {
		return workCenter;
	}


	public void setWorkCenter(String workCenter) {
		this.workCenter = workCenter;
	}


	public String getSystem() {
		return system;
	}


	public void setSystem(String system) {
		this.system = system;
	}


	public String getGripe() {
		return gripe;
	}


	public void setGripe(String gripe) {
		this.gripe = gripe;
	}


	public String getDiscrepancy() {
		return discrepancy;
	}


	public void setDiscrepancy(String discrepancy) {
		this.discrepancy = discrepancy;
	}


	public String getResolution() {
		return resolution;
	}


	public void setResolution(String resolution) {
		this.resolution = resolution;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public Integer getHours() {
		return hours;
	}


	public void setHours(Integer hours) {
		this.hours = hours;
	}


	public String getJobStat() {
		return jobStat;
	}


	public void setJobStat(String jobStat) {
		this.jobStat = jobStat;
	}


	public String getStartDate() {
		return startDate;
	}


	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}


	public String getEndDate() {
		return endDate;
	}


	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	
	

	
	

	
	
	
	//to string

	@Override
	public String toString() {
		return "Discrepancy [mcn=" + mcn + ", workCenter=" + workCenter + ", system=" + system + ", gripe=" + gripe
				+ ", discrepancy=" + discrepancy + ", resolution=" + resolution + ", status=" + status + ", hours="
				+ hours + ", jobStat=" + jobStat + ", startDate=" + startDate + ", endDate=" + endDate + "]";
	}

	
	
	
	

}
