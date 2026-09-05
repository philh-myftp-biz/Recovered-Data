from philh_myftp_biz.pc import Path
from philh_myftp_biz import VERBOSE

VERBOSE.enable()

root = Path("E:/_recovery/CT2000BX 500SSD1 SCSI Disk Device")

while True:
    for f in root.descendants:

        try:

            if f.is_dir and f.is_empty:
                f.delete()

            if f.is_file and (f.type is None):
                f.delete()

        except PermissionError:
            pass
