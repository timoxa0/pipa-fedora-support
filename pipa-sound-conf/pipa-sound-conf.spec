Name: pipa-sound-conf
Version: 1.3
Release: 1
Summary: Sound settings for Xiaomi Mi Pad 6 (pipa)
Source1: Xiaomi Pad 6.conf
Source2: HiFi_pipa.conf
Source3: 51-pipa.conf
License: Unknown
BuildArch: noarch
Provides: alsa-ucm-conf-xiaomi-pipa = %{version}-%{release}
Obsoletes: alsa-ucm-conf-xiaomi-pipa < %{version}-%{release}

Requires: alsa-ucm

%description
ALSA Use Case Manager configuration settings for Xiaomi Mi Pad 6 (pipa)

%install
install -Dm644 "%{SOURCE1}" "%{buildroot}/usr/share/alsa/ucm2/conf.d/sm8250/Xiaomi Pad 6.conf"
install -Dm644 "%{SOURCE2}" "%{buildroot}/usr/share/alsa/ucm2/Qualcomm/sm8250/HiFi_pipa.conf"
install -Dm644 "%{SOURCE3}" "%{buildroot}/usr/share/wireplumber/wireplumber.conf.d/51-qcom.conf"

%files
/usr/share/alsa/ucm2/Qualcomm/sm8250/HiFi_pipa.conf
/usr/share/alsa/ucm2/conf.d/sm8250/Xiaomi\ Pad\ 6.conf
/usr/share/wireplumber/wireplumber.conf.d/51-qcom.conf
