package com.javatpoint.view;

import java.util.List;
import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.view.document.AbstractPdfView;

import com.javatpoint.beans.Emp;
import com.lowagie.text.Document;
import com.lowagie.text.Paragraph;
import com.lowagie.text.pdf.PdfPTable;
import com.lowagie.text.pdf.PdfWriter;

public class EmpPdfView extends AbstractPdfView{

	@Override
	protected void buildPdfDocument(Map<String, Object> map, Document doc,
			PdfWriter pw, HttpServletRequest req, HttpServletResponse res)
			throws Exception {
		
		//for filename
		res.addHeader("Content-Disposition", "attachment;filename=Customer_List.pdf");
		
		//1. read data from ModelMap
		@SuppressWarnings("unchecked")
		List<Emp> emps=(List<Emp>)map.get("emps");
		
		//2. Create elements Paragraph , Table
		Paragraph p=new Paragraph("Welcome to empsations PDF File....");
		Paragraph dte=new Paragraph(new Date().toString());
		
		PdfPTable table=new PdfPTable(11);

		table.addCell("ID");
		table.addCell("NAME");
		table.addCell("PHONE");
		table.addCell("EMAIL");
		table.addCell("ADDRESS");
		table.addCell("GENDER");
		table.addCell("DETAILS");
		table.addCell("CUST-ID NO");
		table.addCell("CHECK IN");
		table.addCell("CHECK OUT");
		table.addCell("ROOM NO");
		
		for(Emp emp:emps){
			table.addCell(emp.getId()+"");
			table.addCell(emp.getName());
			table.addCell(emp.getPhone()+"");
			table.addCell(emp.getEmail());
			table.addCell(emp.getAddress());
			table.addCell(emp.getGender());
			table.addCell(emp.getDetails());
			table.addCell(emp.getCid());
			table.addCell(emp.getCheckin());
			table.addCell(emp.getCheckout());
			table.addCell(emp.getRoomno()+"");
		}
		
		//3. add elements to Document
		doc.add(p);
		doc.add(table);
		doc.add(dte);
		
	}

}
