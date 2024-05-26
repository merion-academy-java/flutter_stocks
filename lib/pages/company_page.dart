import 'package:flutter/material.dart';
import 'package:flutter_stocks/components/line_chart.dart';
import 'package:flutter_stocks/components/stock_item_component.dart';

class CompanyPage extends StatelessWidget {
  const CompanyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Google'),
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            const SizedBox(
              height: 28,
            ),
            _buildHeader(context),
            const SizedBox(
              height: 20,
            ),
            LineChartSample4(),
            const SizedBox(
              height: 28,
            ),
            _buildStatisticHeader(context),
            _buildStatisticLine(context, 'Previous Close', '\$1,800', Colors.black),
            _buildStatisticLine(context, 'Opening Price', '\$1,860', Colors.black),
            _buildStatisticLine(context, '24H Returns %', '2.35%', const Color.fromRGBO(25, 175, 0, 1)),
            _buildStatisticLine(context, 'Ask Price', '\$1,923', Colors.black),
            _buildStatisticLine(context, 'Predicted 24H Returns', '1.20%', const Color.fromRGBO(217, 42, 42, 1)),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      width: double.infinity,
      child: const Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/google.png'),
                width: 48,
                height: 48,
              ),
              SizedBox(
                width: 8,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Google',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Alphabet',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Color.fromRGBO(95, 103, 111, 1)),
                  ),
                ],
              )),
              Column(
                children: [
                  Text(
                    '\$2,300',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                  Text(
                    '2.35% in last 7 days',
                    style: TextStyle(
                        color: Color.fromRGBO(25, 175, 0, 1),
                        fontSize: 12,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }

  Widget _buildStatisticHeader(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      width: double.infinity,
      child: const Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Text(
                'Statistic',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              )),
            ],
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }

  Widget _buildStatisticLine(
      BuildContext context, String title, String value, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      width: double.infinity,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Text(
                title,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Color.fromRGBO(95, 103, 111, 1)),
              )),
              Text(
                value,
                style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w900, color: color),
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            color: const Color.fromRGBO(230, 230, 230, 1),
            width: double.infinity,
            height: 1,
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
