// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {
    setTimeout(function(){
        $('#shoes-list tfoot th').each( function (index) {
            if (index !== 0 && index !== 6 && index !== 7 && index !== 8){
                var title = $(this).text();
                $(this).html( '<input type="text" id="filter-'+index+'" placeholder="Search '+title+'" />' );
            }
        } );

    	var table = $('#shoes-list').DataTable( {
            "columns":[
                {"sortable": false},
                {"sortable": true},
                {"sortable": true},
                {"sortable": true},
                {"sortable": true},
                {"sortable": true},
                {"sortable": false},
                {"sortable": false},
                {"sortable": false}
            ],

            

        } );

        $( table.table().container() ).on( 'keyup', 'tfoot input', function () {
            var index = this.id.split("-")[1];

            table
                .column( index)
                .search( this.value )
                .draw();
    } );
       

    }, 200);
} );