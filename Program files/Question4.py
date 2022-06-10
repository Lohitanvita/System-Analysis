import matplotlib.pyplot as plt
import numpy as np
from numpy.fft import fft, ifft

plt.style.use('seaborn-poster')
"matplotlib inline"

# Building a sample signal with sampling rate 3000 and sampling interval 1.0/3000
# sampling rate
sr = 3000
# sampling interval
ts = 1.0/sr
t = np.arange(0,1,ts)

freq = 2
x = 5*np.sin(2*np.pi*freq*t)

freq = 5
x += np.sin(2*np.pi*freq*t)

freq = 7
x += 1* np.sin(2*np.pi*freq*t)

plt.figure(figsize = (8, 6))
plt.plot(t, x, 'r')
plt.ylabel('Amplitude')

plt.show()

"""Considering frequency = 7 as the original signal and freq =2,5 as the interference and noise signal frequecncies
 We are trying to depict the time domain sinusoidal signal into frequency domain in order to eliminate noise signals  using fft"""

# fft of signal x which is a sinusoidal signal of frequencies 2,5,7
X = fft(x)
N = len(X)
n = np.arange(N)
T = N/sr
freq = n/T

plt.figure(figsize = (12, 6))
plt.subplot(121)

plt.stem(freq, np.abs(X), 'b', \markerfmt=" ", basefmt="-b")
plt.xlabel('Freq (Hz)')
plt.ylabel('FFT Amplitude |X(freq)|')
plt.xlim(0, 10)

plt.subplot(122)
plt.plot(t, ifft(X), 'r')
plt.xlabel('Time (s)')
plt.ylabel('Amplitude')
plt.tight_layout()
plt.show()