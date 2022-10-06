import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  String? size;
  int count = 0;
  void incrementCount(){
    setState(() {
      count++;
    });
  }

void decrementCount(){
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFf8eee1),
        centerTitle: true,
        // for putting the text in centre
        elevation: 0,
        // for removing the shadow
        title: Text(
          "Details",
          style: TextStyle(fontSize: 18, color: Color(0xFF7b4f44)),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
                child: Text(
                  'Size & Price',
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF7b4f44),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Divider(),
              RadioListTile(
                title: Text("Small  |  \$10 per piece"),
                value: "small",
                groupValue: size,
                onChanged: (value) {
                  setState(() {
                    size = value.toString();
                  });
                },
              ),
              RadioListTile(
                title: Text("Medium  |  \$29 per piece"),
                value: "medium",
                groupValue: size,
                onChanged: (value) {
                  setState(() {
                    size = value.toString();
                  });
                },
              ),
              RadioListTile(
                title: Text("Large  |  \$49 per piece"),
                value: "large",
                groupValue: size,
                onChanged: (value) {
                  setState(() {
                    size = value.toString();
                  });
                },
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
                child: Text(
                  'Quantity',
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF7b4f44),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FloatingActionButton(
                    backgroundColor: Color(0xFF7b4f44),
                    onPressed: incrementCount,
                    child: Icon(Icons.add),
                  ),
                  Text("${count}"),
                  FloatingActionButton(
                    backgroundColor: Color(0xFF7b4f44),
                    onPressed: decrementCount,
                    child: Icon(Icons.remove),
                  )
                ],
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
                child: Text(
                  'Product Details',
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF7b4f44),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Divider(),
              DataTable(
                columns: const <DataColumn>[
                  DataColumn(
                    label: Text(
                      'Info',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Details',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
                rows: const <DataRow>[
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Sold By -')),
                      DataCell(Text('Wishpering Homes')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Color -')),
                      DataCell(Text('White')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Length -')),
                      DataCell(Text('40cm - 50cm')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Weight -')),
                      DataCell(Text('70-90 gm')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Material -')),
                      DataCell(Text('Flower')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Design Style')),
                      DataCell(Text('Boho')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Life Span -')),
                      DataCell(Text('3-4 years')),
                    ],
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 45,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "buynow");
                    },
                    child: Text('Buy Now'),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFF7b4f44),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 45,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "addtocart");
                    },
                    child: Text('Add to Cart'),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFF7b4f44),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

