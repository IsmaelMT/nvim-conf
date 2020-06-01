command! RemotePdb :norm ofrom remote_pdb import RemotePdb<CR>RemotePdb('0.0.0.0', 4444).set_trace()
command! Ipdb :norm oimport ipdb; ipdb.set_trace()
