package controllers;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import data.Discrepancy;
import data.DiscrepancyDAO;


@SessionAttributes("discrepancies")
@Controller
public class Controller1 {
	
	@Autowired
	private DiscrepancyDAO discrep;
	

	
	//shows aircraft status and displays discrepancy list
	@RequestMapping("index.do")
	public ModelAndView processData() {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("index.jsp");
		mv.addObject("aircraftStatus", discrep.getAircraftStatus() );
		mv.addObject("discrepancyList", discrep.showAll());
		return mv;
		
	}
	

	
	@RequestMapping("init.do")
	public ModelAndView processData(@RequestParam("param") String one) {
		String out = one;
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("index.jsp");
		
		return mv;

	}
	
	//initiates new discrepancy 
	@RequestMapping(path = "newDisc.do", method = RequestMethod.POST)
	public ModelAndView newDiscrepancy(Discrepancy discrepancy) {
		discrep.addDiscrepancy(discrepancy);
		ModelAndView mv = new ModelAndView();
	
		mv.setViewName("index.jsp");
		mv.addObject("aircraftStatus", discrep.getAircraftStatus() );
		mv.addObject("discrepancyList", discrep.showAll());
		return mv;
		
	}
	
	
	//passes object to new page and pre fills form with object states 
	@RequestMapping("editDiscrep.do")
	public ModelAndView editDiscrep(Integer mcn ) {
		
		Discrepancy d;
		d = discrep.getDiscByMcn(mcn);
		
	
		ModelAndView mv = new ModelAndView("editDiscrep.jsp", "discrepancy", d);
		return mv;
		
	}
	
	@RequestMapping(path = "updateDisc.do", method = RequestMethod.POST)
	public ModelAndView updateDiscrep(Discrepancy updatedDisc) {
		
		System.out.println("inside controller update");
		
		discrep.updateDisc(updatedDisc);
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("index.jsp");
		mv.addObject("aircraftStatus", discrep.getAircraftStatus() );
		mv.addObject("discrepancyList", discrep.showAll());
		
		return mv;
		
	}


	
	//deletes discrepancy 
		@RequestMapping(path = "deleteDisc.do", method = RequestMethod.POST)
		public ModelAndView deleteDiscrepancy(@RequestParam("mcn") Integer mcn) {
			System.out.print("inside controller delete discrepancy" + mcn);
			System.out.println("mcn-----" + mcn);
			discrep.deleteDisc(mcn);
			
			ModelAndView mv = new ModelAndView();
		
			mv.setViewName("index.jsp");
			mv.addObject("aircraftStatus", discrep.getAircraftStatus() );
			mv.addObject("discrepancyList", discrep.showAll());
			return mv;
			
		}
		
		@RequestMapping("sortDiscsByStat.do")
		public ModelAndView sortDiscs(@RequestParam("status") String stat){
			ModelAndView mv = new ModelAndView();
		
			System.out.println("status selected: " + stat);
		
			
			mv.setViewName("index.jsp");
			mv.addObject("aircraftStatus", discrep.getAircraftStatus() );
			mv.addObject("discrepancyList", discrep.getDiscByStatus(stat));
		

			return mv;
			
		}
		
		
		
		
		@RequestMapping("sortDiscsByWorkCenter.do")
		public ModelAndView sortByWorkCenter(@RequestParam("status") String wc){
			ModelAndView mv = new ModelAndView();
		
			System.out.println("status selected: " + wc);
			
			
			mv.setViewName("index.jsp");
			mv.addObject("aircraftStatus", discrep.getAircraftStatus() );
			mv.addObject("discrepancyList", discrep.getDiscByWorkCenter(wc));
		

			return mv;
			
		}
		
		
		
		
		@RequestMapping("allDiscs.do")
		public ModelAndView allDiscs() {
			ModelAndView mv = new ModelAndView();
			
			mv.setViewName("index.jsp");
			mv.addObject("aircraftStatus", discrep.getAircraftStatus() );
			mv.addObject("discrepancyList", discrep.showAll());
			return mv;
			
		}




		
		
//		
//		public List<Discrepancy> deleteDups(List<Discrepancy> list){
//			
//			ArrayList<Discrepancy> l2 = new ArrayList<>();
//
//			Iterator<Discrepancy> discIt = discrepancies.iterator();
//
////			Iterator iterator = l1.iterator();
//
//			        while (discIt.hasNext()){
//			        	Discrepancy d = discIt.next();
//			        	
//			        	
//			            if(!l2.contains(d)) l2.add(d);
//			        }
//			
//			
//			
//			
//			
//			return discrepancies;
//
//		
//		}
		
		
		

	

}

