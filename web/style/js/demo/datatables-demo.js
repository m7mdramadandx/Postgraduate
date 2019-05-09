// Call the dataTables jQuery plugin
$(document).ready(function() {


  $('#dataTable').DataTable({
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
	,
	"columnDefs": [ {
		"width": "1%", "targets": 0,
	} ]

,
initComplete: function () {
	this.api().columns().every( function () {
			var column = this;
			var select = $('<select><option value=""></option></select>')
					.appendTo( $(column.header()))
					.on( 'change', function () {
							var val = $.fn.dataTable.util.escapeRegex(
									$(this).val()
							);

							column
									.search( val ? '^'+val+'$' : '', true, false )
									.draw();
					} );

			column.data().unique().sort().each( function ( d, j ) {
					select.append( '<option value="'+d+'">'+d+'</option>' )
			} );
	} );
}
	



	});
	

});


