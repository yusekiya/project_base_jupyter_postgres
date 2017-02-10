import os
from IPython.lib import passwd

c.NotebookApp.ip = '*'
c.NotebookApp.port = int(os.getenv('PORT', 8888))
c.NotebookApp.notebook_dir = '/project/notebook'
c.NotebookApp.open_browser = False
c.MultiKernelManager.default_kernel_name = 'python3'

# sets a password if PASSWORD is set in the environment
if 'NOTEBOOK_PASSWORD' in os.environ:
  c.NotebookApp.password = passwd(os.environ['NOTEBOOK_PASSWORD'])
  del os.environ['NOTEBOOK_PASSWORD']
