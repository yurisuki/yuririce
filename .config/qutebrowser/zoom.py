#!/usr/bin/python3
"""
Small Python script to change qutebrowser zoom.

"""
try:
    from qutebrowser import qutebrowser, app
    from qutebrowser.misc import ipc
except ImportError:
    print("Error: `qutebrowser` is missing.")
    exit(1)


def zoom():
    """Send :set zoom.default ~value command to qutebrowser's ipc server."""
    args = qutebrowser.get_argparser().parse_args()
    app.standarddir.init(args)
    socket = ipc._get_socketname(args.basedir)
    """Replace the value in `:set zoom.default ~value`"""
    ipc.send_to_running_instance(socket, [":set zoom.default 100"], args.target)

zoom()
