#!/usr/bin/python
# usage: python2 bag_batch_process.py --yaml=xxx.yaml --option=filter_bag

import os
import argparse
import yaml


plat_data_pair_list = [
    # my own data: ouster128+ stim300 + f9p(RTK)
    # ('lp', 'geocue')
    # ('hkust', 'campus_day_ouster128_bodyimu')
    ('my_data', 'my_sequence')
]

bag_path_download = '/home/tihami/data_management/bag/'
bag_path_list = [
    bag_path_download + 'merged.bag'
    # bag_path_download + '20220226_campus_road_day_ref_lidar_bodyimu.bag'
]

algorithm_type_list = [
    # '0',  # liosam
    # '1',  # liomapping
    # '2'  # fastlio
    # '3',  # fasterlio
    # '4',  # liliom
    # '6'  # liosam_loop
    '7'  # fastlio_loop
]

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    args = parser.parse_args()

    for i, pd_pair in enumerate(plat_data_pair_list):
        bag_path_dir = bag_path_list[i]
        # for bag_path_dir in bag_path_list:
        for algorithm_type in algorithm_type_list:
            command = 'roslaunch lio_sam_6axis pandar.launch' + \
                      ' bag_path:=' + bag_path_dir + \
                      ' sequence:=' + pd_pair[1]
            # print("================run algorithm at %s sequence==================")
            print(command)
            log_file = "debug.log"
            print(command)
            os.system(command + f" > {log_file} 2>&1")
            print(f"Command output is logged in {log_file}")
