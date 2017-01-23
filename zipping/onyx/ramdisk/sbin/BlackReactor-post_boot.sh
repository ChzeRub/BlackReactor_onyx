#!/system/bin/sh

echo "[BlackReactor-Kernel] Boot Script Started" | tee /dev/kmsg


# set msm_mpdecision parameters
echo 45000 > /sys/module/msm_mpdecision/slack_time_max_us
echo 15000 > /sys/module/msm_mpdecision/slack_time_min_us
echo 100000 > /sys/module/msm_mpdecision/em_win_size_min_us
echo 1000000 > /sys/module/msm_mpdecision/em_win_size_max_us
echo 3 > /sys/module/msm_mpdecision/online_util_pct_min
echo 25 > /sys/module/msm_mpdecision/online_util_pct_max
echo 97 > /sys/module/msm_mpdecision/em_max_util_pct
echo 2 > /sys/module/msm_mpdecision/rq_avg_poll_ms
echo 10 > /sys/module/msm_mpdecision/mp_em_rounding_point_min
echo 85 > /sys/module/msm_mpdecision/mp_em_rounding_point_max
echo 50 > /sys/module/msm_mpdecision/iowait_threshold_pct

setprop ro.qualcomm.perf.cores_online 2

echo "Success" > /data/BlackReactor/test.log
echo "[BlackReactor-Kernel] Boot Script Completed!" | tee /dev/kmsg