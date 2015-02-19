import os
import pylab as py

def run(pdf,plotup,runcommand):

    ###########################################
    # run the code
    ###########################################
    os.system(runcommand)
     
    ###########################################
    # compare the output
    ###########################################
    py.clf()


    x,f,c = py.loadtxt('spectrum_1.dat',unpack=1,skiprows=1)
    lam = 3e10/x*1e8
    ff = f/lam**2
    b = py.interp(8000.0,lam,ff)
    ff = ff/b
    py.plot(lam,ff)

    ls,fs,es = py.loadtxt('synow_spectrum.dat',unpack=1)
    b = py.interp(8000,ls,fs)
    fs = fs/b

    py.plot(ls,fs)
    py.xlim(2000,10000)

    pdf.savefig()
    if (plotup):
        py.show()
        j = raw_input()


    # clean results
    os.system("rm out_spectrum_1.dat ray_* gomc")
