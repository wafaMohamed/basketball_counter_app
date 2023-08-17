import 'package:basketball_counter_app/cubit/counter_cubit.dart';
import 'package:basketball_counter_app/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../constant/app_theme.dart';

class BasketBallScreen extends StatelessWidget {
  const BasketBallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double buttonFontSize = screenHeight * 0.03;
    final double scoreFontSize = screenHeight * 0.1;

    return BlocConsumer<CounterCubit, CounterState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: AppTheme.orange,
            title: const Text('Points Counter'),
            centerTitle: true,
          ),
          body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/basketball_photo.png"),
              // Replace with your image path
              fit: BoxFit.cover,
            )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    /// TEAM A
                    SizedBox(
                      height: screenHeight * 0.6,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MaterialButton(
                            onPressed: () {},
                            color: AppTheme.red,
                            child: Text(
                              'Team A',
                              style: TextStyle(
                                fontSize: buttonFontSize,
                                color: AppTheme.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Text(
                            '${BlocProvider.of<CounterCubit>(context).teamAPoints}',
                            maxLines: 2,
                            style: TextStyle(
                              fontSize: scoreFontSize,
                              overflow: TextOverflow.ellipsis,
                              color: AppTheme.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(screenHeight * 0.015),
                              backgroundColor: AppTheme.orange,
                              minimumSize:
                                  Size(screenHeight * 0.2, screenHeight * 0.08),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .teamIncrement(team: 'A', buttonsNumber: 1);
                            },
                            child: Text(
                              '1 Point',
                              style: TextStyle(
                                fontSize: buttonFontSize,
                                color: AppTheme.black,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppTheme.orange,
                              minimumSize:
                                  Size(screenHeight * 0.2, screenHeight * 0.08),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .teamIncrement(team: 'A', buttonsNumber: 2);
                            },
                            child: Text(
                              '2 Points',
                              style: TextStyle(
                                fontSize: buttonFontSize,
                                color: AppTheme.black,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppTheme.orange,
                              minimumSize:
                                  Size(screenHeight * 0.2, screenHeight * 0.08),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .teamIncrement(team: "A", buttonsNumber: 3);
                            },
                            child: Text(
                              '3 Points',
                              style: TextStyle(
                                fontSize: buttonFontSize,
                                color: AppTheme.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.7,
                      child: VerticalDivider(
                        indent: screenHeight * 0.1,
                        endIndent: screenHeight * 0.1,
                        color: AppTheme.white,
                        thickness: 1,
                      ),
                    ),

                    /// TEAM B
                    SizedBox(
                      height: screenHeight * 0.6,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MaterialButton(
                            onPressed: () {},
                            color: AppTheme.red,
                            child: Text(
                              'Team B',
                              maxLines: 2,
                              style: TextStyle(
                                fontSize: buttonFontSize,
                                overflow: TextOverflow.ellipsis,
                                color: AppTheme.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Text(
                            '${BlocProvider.of<CounterCubit>(context).teamBPoints}',
                            style: TextStyle(
                              fontSize: scoreFontSize,
                              color: AppTheme.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(screenHeight * 0.015),
                              backgroundColor: AppTheme.orange,
                              minimumSize:
                                  Size(screenHeight * 0.2, screenHeight * 0.08),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .teamIncrement(team: "B", buttonsNumber: 1);
                            },
                            child: Text(
                              '1 Point',
                              style: TextStyle(
                                fontSize: buttonFontSize,
                                color: AppTheme.black,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppTheme.orange,
                              minimumSize:
                                  Size(screenHeight * 0.2, screenHeight * 0.08),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .teamIncrement(team: "B", buttonsNumber: 2);
                            },
                            child: Text(
                              '2 Points',
                              style: TextStyle(
                                fontSize: buttonFontSize,
                                color: AppTheme.black,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppTheme.orange,
                              minimumSize:
                                  Size(screenHeight * 0.2, screenHeight * 0.08),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .teamIncrement(team: "B", buttonsNumber: 3);
                            },
                            child: Text(
                              '3 Points',
                              style: TextStyle(
                                fontSize: buttonFontSize,
                                color: AppTheme.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(screenHeight * 0.0100),
                    backgroundColor: AppTheme.red,
                    minimumSize: Size(screenHeight * 0.2, screenHeight * 0.08),
                  ),
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context).resetCounters();
                  },
                  child: Text(
                    'Reset',
                    style: TextStyle(
                      fontSize: buttonFontSize,
                      color: AppTheme.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      listener: (context, state) {},
    );
  }
}
