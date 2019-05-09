var rows = document.getElementsByTagName('tr');

    for(var i=1 ;i< rows.length ; i++ ){
        var para = document.createElement("td");
        rows[i].insertCell(para);
        rows[i].children[0].innerHTML = i;
    }

/* data tables */


$(document).ready(function() {
    $('#table_id').DataTable( {
        "language": {
            "sProcessing":   "جارٍ التحميل...",
	"sLengthMenu":   "أظهر _MENU_ مدخلات",
	"sZeroRecords":  "لم يعثر على أية سجلات",
	"sInfo":         "إظهار _START_ إلى _END_ من أصل _TOTAL_ مدخل",
	"sInfoEmpty":    "يعرض 0 إلى 0 من أصل 0 سجل",
	"sInfoFiltered": "(منتقاة من مجموع _MAX_ مُدخل)",
	"sInfoPostFix":  "",
	"sSearch":       "ابحث:",
	"sUrl":          "",
	"oPaginate": {
		"sFirst":    "الأول",
		"sPrevious": "السابق",
		"sNext":     "التالي",
		"sLast":     "الأخير"
	}
        }
    } );
} );

