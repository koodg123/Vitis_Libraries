open_project -reset prj_ssr_fft_reg_test_r16_l256
set_top fft_top
add_files src/main.cpp -cflags "-I../../../1dfftFix/ -I../../../commonFix/"
##add_files src/hls_ssr_fft_data_path.hpppppp
#add_files src/DEBUG_CONSTANTS.hpp
add_files -tb src/main.cpp -cflags "-I../../../1dfftFix/ -I../../../commonFix/"
add_files -tb ../../../commonFix/verif/fftStimulusIn_L256.verif
add_files -tb ../../../commonFix/verif/fftGoldenOut_L256.verif
open_solution -reset "solution-reg-test-r16-l256"
set_part {xcu200-fsgd2104-2-e}
create_clock -period 4 -name default

csim_design -clean
#csynth_design
#cosim_design -trace_level port
exit
