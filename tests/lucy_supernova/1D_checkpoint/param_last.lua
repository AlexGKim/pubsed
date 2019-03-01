sedona_home   = os.getenv('SEDONA_HOME')

defaults_file    = sedona_home.."/defaults/sedona_defaults.lua"
data_atomic_file = sedona_home.."/data/ASD_atomdata.hdf5"

grid_type    = "grid_1D_sphere"        -- grid geometry; match input model
model_file   = "../models/lucy_1D.mod"    -- input model file
hydro_module = "homologous"

-- time stepping
days = 3600.0*24
tstep_max_steps  = 1000
tstep_time_stop  = 70.0*days
tstep_max_dt     = 0.5*days
tstep_min_dt     = 0.0
tstep_max_delta  = 0.05

-- emission parameters
particles_n_emit_radioactive = 1e4

-- output spectrum
spectrum_time_grid = {-0.5*days,100*days,0.5*days}
spectrum_name = "optical_spectrum"
gamma_name    = "gamma_spectrum"

-- opacity parameters
opacity_grey_opacity     = 0.1
transport_radiative_equilibrium   = 1

-- checkpoint/restart parameters
run_do_restart                  = 1
run_do_checkpoint               = 0
run_restart_file                = "chk_00068.h5"
