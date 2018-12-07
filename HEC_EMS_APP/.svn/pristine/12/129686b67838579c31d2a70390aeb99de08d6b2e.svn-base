/// <reference path="./Intellisense/cfx.visualStudio.js" />


function doInitializeDash()
{
    var title;

    // Top 5 Creditors Chart
    populateBarChart(chart1);
    chart1.setGallery(cfx.Gallery.Gantt);
    title = new cfx.TitleDockable();
    title.setText("Lectures: Discispline Wise Report");
    chart1.getTitles().add(title);
    chart1.getAllSeries().getPointLabels().setVisible(true);
    chart1.getSeries().getItem(0).getPointLabels().setOffset("0,3");
    chart1.getSeries().getItem(1).getPointLabels().setOffset("5,3");
    var gantt = chart1.getGalleryAttributes();
    chart1.getSeries().getItem(0).setVolume(80);
    chart1.getSeries().getItem(1).setVolume(40);
    var axisY = chart1.getAxisY();
    axisY.setScaleUnit(0);
    axisY.setMax(axisY.getMax() * 1.1);
    title = new cfx.TitleDockable();
    title.setText("# of Lectures");
    title.setDock(cfx.DockArea.Bottom);
    chart1.getTitles().add(title);


    //// Inventory Levels per Bike Type

    //title = new cfx.gauge.Title();
    //title.setText("Inventory Levels per Bike Type");
    //border1.getTitles().add(title);

    //vertical1.getMainScale().setMax(500);
    //vertical1.setMainValue(371);
    //vertical1.getMainIndicator().setUseSectionColor(true);
    //title = new cfx.gauge.Title();
    //title.setText("Road");
    //title.setAngle(0);
    //title.setDock(cfx.gauge.DockArea.Bottom);
    //vertical1.getTitles().add(title);
    //doConfigureLevelsSections(vertical1);

    //vertical2.getMainScale().setMax(500);
    //vertical2.setMainValue(125);
    //vertical2.getMainIndicator().setUseSectionColor(true);
    //title = new cfx.gauge.Title();
    //title.setText("Mountain");
    //title.setAngle(0);
    //title.setDock(cfx.gauge.DockArea.Bottom);
    //vertical2.getTitles().add(title);
    //doConfigureLevelsSections(vertical2);

    //vertical3.getMainScale().setMax(500);
    //vertical3.setMainValue(196);
    //vertical3.getMainIndicator().setUseSectionColor(true);
    //title = new cfx.gauge.Title();
    //title.setText("Touring");
    //title.setAngle(0);
    //title.setDock(cfx.gauge.DockArea.Bottom);
    //vertical3.getTitles().add(title);
    //doConfigureLevelsSections(vertical3);


    // Inventory Distribution 
  
    populatePieChart(chart2);
    chart2.setGallery(cfx.Gallery.Pie);
    chart2.getAllSeries().getPointLabels().setVisible(true);
    chart2.getPlotAreaMargin().setTop(40);
    chart2.getPlotAreaMargin().setBottom(40);
    chart2.getPlotAreaMargin().setLeft(40);
    chart2.getPlotAreaMargin().setRight(40);
    chart2.getLegendBox().setContentLayout(cfx.ContentLayout.Center);
    title = new cfx.TitleDockable();
    title.setText("Discipline Wise Lecture Percentage");
    chart2.getTitles().add(title);

    //// Inventory Spending

    //radial1.setMainValue(660743);
    //if (radial1.getTitles().getCount() == 0) {
    //    title = new cfx.gauge.Title();
    //    radial1.getTitles().add(title);
    //}
    //else
    //    title = radial1.getTitles().getItem(0);
    //title.setText("Spending: Bikes");
    //doConfigureSpendingSections(radial1,200000,500000,700000);

    //radial2.setMainValue(1002009);
    //if (radial2.getTitles().getCount() == 0) {
    //    title = new cfx.gauge.Title();
    //    radial2.getTitles().add(title);
    //}
    //else
    //    title = radial2.getTitles().getItem(0);
    //title.setText("Spending: Components");
    //doConfigureSpendingSections(radial2, 400000, 1100000, 1500000);

    //radial3.setMainValue(454993);
    //if (radial3.getTitles().getCount() == 0) {
    //    title = new cfx.gauge.Title();
    //    radial3.getTitles().add(title);
    //}
    //else
    //    title = radial3.getTitles().getItem(0);
    //title.setText("Spending: Clothing");
    //doConfigureSpendingSections(radial3, 200000, 500000, 700000);

    //var funnel = new cfx.funnel.Funnel();
    //chart3.setGalleryAttributes(funnel);
    //populateCapitalAllocation(chart3);
    //title = new cfx.TitleDockable();
    //title.setText("Capital Allocation");
    //chart3.getTitles().add(title);
}

function populateBarChart(chart)
{
    var items = [
  {
      "Discisplince": "Agriculture and Veterinary Animal Sciences",
      "Locale Lecture": 20,
      "Foreign Lecture": 48
  },
  {
      "Discisplince": "Biological and Medical Sciences",
      "Locale Lecture": 329,
      "Foreign Lecture": 148
  },
  {
      "Discisplince": "Bsiness Administration & Management",
      "Locale Lecture": 19,
      "Foreign Lecture": 1
  },
  {
      "Discisplince": "Engineering and Technology",
      "Locale Lecture": 217,
      "Foreign Lecture": 35
  },  
  {
      "Discisplince": "Physical Sciences",
      "Locale Lecture": 179,
      "Foreign Lecture": 144
  },
  {
      "Discisplince": "Social Sciences",
      "Locale Lecture": 39,
      "Foreign Lecture": 31
  }
    ];

    chart.setDataSource(items);

}

function populatePieChart(chart)
{

    var items = [
{
    "Category": "Agriculture and Veterinary Animal Sciences",
    "Lectures": 4
},
{
    "Category": "Biological and Medical Sciences",
    "Lectures": 154
},
{
    "Category": "Business Administration & Management",
    "Lectures": 23
},
{
    "Category": "Engineering and Technology",
    "Lectures": 53
},
{
    "Category": "Physical Sciences",
    "Lectures": 87
},
{
    "Category": "Social Sciences",
    "Lectures": 1
}
    ];


    chart.setDataSource(items);
}

function populateCapitalAllocation(chart)
{
    var items = [
  {
      "SubjectIdName": "Mountain Bikes",
      "InventoryValue": 72396.22
  },
  {
      "SubjectIdName": "Touring Bikes",
      "InventoryValue": 113517.28
  },
  {
      "SubjectIdName": "Road Bikes",
      "InventoryValue": 214871.98
  },
  {
      "SubjectIdName": "Clothing and Accessories",
      "InventoryValue": 789408.38
  },
  {
      "SubjectIdName": "Components",
      "InventoryValue": 1384794.88
  }
    ];

    chart.setDataSource(items);
}

function doConfigureLevelsSections(gauge)
{
    var scale = gauge.getMainScale();

    var section = new cfx.gauge.ScaleSection();
    section.setFrom(0);
    section.setTo(150);
    scale.getSections().add(section);

    section = new cfx.gauge.ScaleSection();
    section.setFrom(150);
    section.setTo(300);
    scale.getSections().add(section);

    section = new cfx.gauge.ScaleSection();
    section.setFrom(300);
    section.setTo(500);
    scale.getSections().add(section);
}

function doConfigureSpendingSections(gauge, limit0, limit1, limit2)
{
    var scale = gauge.getMainScale();

    var section = new cfx.gauge.ScaleSection();
    section.setFrom(0);
    section.setTo(limit0);
    section.setTag("Section0");
    scale.getSections().add(section);

    section = new cfx.gauge.ScaleSection();
    section.setFrom(limit0);
    section.setTo(limit1);
    section.setTag("Section2");
    scale.getSections().add(section);

    section = new cfx.gauge.ScaleSection();
    section.setFrom(limit1);
    section.setTo(limit2);
    section.setTag("Section0");
    scale.getSections().add(section);

    scale.setMax(limit2);
}
