#!/usr/bin/python
# usage: python2 bag_batch_process.py --yaml=xxx.yaml --option=filter_bag

import os
import argparse
import yaml


plat_data_pair_list = [
    # my own data: ouster128+ stim300 + f9p(RTK)
    # ('lp', 'geocue')
    # ('hkust', 'campus_day_ouster128_bodyimu')
    # ('my_data', 'my_sequence')
    ('my_data', 'Outside')
    # ('my_data', 'OnFootAcquisition2OutsideInside')
    # ('my_data', 'Cycle_250507_155315_136SN999')
    # ('my_data', 'Cycle_250512_114517_136SN999')

]

# bag_path_download = '/media/tihami/05150P129/bag/OnFootAcquisition1Outside'
# bag_path_download = '/media/tihami/05150P129/bag/OnFootAcquisition2OutsideInside'
# bag_path_download = '/media/tihami/05150P129/bag/Cycle_250507_155315_136SN999'
bag_path_download = '/home/tihami/Downloads/outsideNew/'

bag_path_list = [
    # bag_path_download + 'merged_OnFootAcquisition1Outside.bag'
    # bag_path_download + 'merged_OnFootAcquisition2OutsideInside.bag'
    # bag_path_download + 'merged_Cycle_250507_155315_136SN999.bag'
    bag_path_download + 'merged_outside.bag'
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
            os.system(command)