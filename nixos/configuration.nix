{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelPackages = pkgs.linuxPackages_4_18;

  networking.hostName = "luna"; 
  networking.networkmanager.enable = true;
  networking.nameservers = [
    "1.1.1.1"
    "1.0.0.1"
  ];

  fonts.enableDefaultFonts = true;
  fonts.enableFontDir = true;
  fonts.fonts = [ pkgs.source-han-sans-simplified-chinese pkgs.inconsolata pkgs.fira-code pkgs.noto-fonts-emoji ];

  i18n.inputMethod = {
    enabled = "ibus";
    ibus.engines = with pkgs.ibus-engines; [ libpinyin anthy hangul ];
  };

  time.timeZone = "Europe/Berlin";

  environment.systemPackages = [
    (pkgs.polybar.override { i3Support = true; })
  ];

  services.printing.enable = true;
  services.xserver.enable = true;
  services.xserver.windowManager.i3.enable = true;
  services.xserver.libinput.enable = true;
  services.xserver.libinput.tapping = false;
  services.postgresql.enable = true;
  services.udisks2.enable = true;

  services.openvpn.servers = {
    czech = {
      config = ''
client
dev tun
proto udp 
remote cz.gw.ivpn.net 2049
auth-user-pass /etc/openvpn/pass

resolv-retry infinite
nobind
persist-tun
persist-key
persist-remote-ip

cipher AES-256-CBC
tls-cipher TLS-DHE-RSA-WITH-AES-256-CBC-SHA:TLS-DHE-DSS-WITH-AES-256-CBC-SHA:TLS-RSA-WITH-AES-256-CBC-SHA
remote-cert-tls server
verify-x509-name cz name-prefix
key-direction 1
comp-lzo no
verb 3

;ca ca.crt
<ca>
-----BEGIN CERTIFICATE-----
MIIETjCCAzagAwIBAgIJANeN9f9F53lmMA0GCSqGSIb3DQEBBQUAMHcxCzAJBgNV
BAYTAk1UMQ4wDAYDVQQIEwVNYWx0YTEOMAwGA1UEBxMFTWFsdGExETAPBgNVBAoT
CElWUE4ubmV0MRQwEgYDVQQDEwtJVlBOLm5ldCBDQTEfMB0GCSqGSIb3DQEJARYQ
c3VwcG9ydEBpdnBuLm5ldDAeFw0xMDA3MjQxNzQxMjBaFw0yMDA3MjExNzQxMjBa
MHcxCzAJBgNVBAYTAk1UMQ4wDAYDVQQIEwVNYWx0YTEOMAwGA1UEBxMFTWFsdGEx
ETAPBgNVBAoTCElWUE4ubmV0MRQwEgYDVQQDEwtJVlBOLm5ldCBDQTEfMB0GCSqG
SIb3DQEJARYQc3VwcG9ydEBpdnBuLm5ldDCCASIwDQYJKoZIhvcNAQEBBQADggEP
ADCCAQoCggEBANb0cvGYrnHwXm9vZiHGIlvKDo342dE8XyyA4iIyjeSDTnC2XTdu
E/NPxQ2hc5Pi8DKFqzrmJ8qxmLRv3n+NGQsHiP+rKE2Wi6wQYzg12fgxmeLYenbH
J8UzzVCg2YFe97LGs8cBZeirYKHyErP+Od7rYot6VyUKkb5FB+Tjql6GiyiWmxIv
T9PKoFkXSI3riCiLIP1LwzLVcn0nhZvnXFk2EvVmhmjzdJWLNjqe3Zj78mQLzMdc
XFBO28kaEaydvh2k/Beu17YUqGQDt2w4sbL+DPyjD+k/NusVzV4HggISfJAKfHZz
G1cBFA3Hiu+jSkKOMJ4gC3f+WG4Hpj1XS7cCAwEAAaOB3DCB2TAdBgNVHQ4EFgQU
vCA6yNJ+VUdFGuKo/EnEQZUz874wgakGA1UdIwSBoTCBnoAUvCA6yNJ+VUdFGuKo
/EnEQZUz876he6R5MHcxCzAJBgNVBAYTAk1UMQ4wDAYDVQQIEwVNYWx0YTEOMAwG
A1UEBxMFTWFsdGExETAPBgNVBAoTCElWUE4ubmV0MRQwEgYDVQQDEwtJVlBOLm5l
dCBDQTEfMB0GCSqGSIb3DQEJARYQc3VwcG9ydEBpdnBuLm5ldIIJANeN9f9F53lm
MAwGA1UdEwQFMAMBAf8wDQYJKoZIhvcNAQEFBQADggEBAFhU6MPf42dp5U0yPE0c
ZS3g/pqd4GV4eBe7wYydv88FCScV8o2XGi3VruHKLbyGNxiD3OWwV81NNpLA8rFi
vFgaKU+meWjCRQmptKWmoFpzPtCxB59D9zqYB0TaAuGOh084ioM+qC+MMXJzYY7c
aXvOZ02b1lu44Z1GDIDxy1ONhajoRS59QmNpeoD3jtrVfGPmMwcR26TBj2nMudZK
YMjYmbORgXu/0a/4jZ43B0mvRXCX64xOmwFZHioONhrxdtGA0pNwCXYWKyJ2pnLA
6VBoEr0Hku56c0ZIDVdi3EUmO/K/XmOmmp6htKELdvjR3goiS/fC/2XTSkIJe3Va
15U=
-----END CERTIFICATE-----
</ca>
<tls-auth>
-----BEGIN OpenVPN Static key V1-----
ac470c93ff9f5602a8aab37dee84a528
14d10f20490ad23c47d5d82120c1bf85
9e93d0696b455d4a1b8d55d40c2685c4
1ca1d0aef29a3efd27274c4ef09020a3
978fe45784b335da6df2d12db97bbb83
8416515f2a96f04715fd28949c6fe296
a925cfada3f8b8928ed7fc963c156327
2f5cf46e5e1d9c845d7703ca881497b7
e6564a9d1dea9358adffd435295479f4
7d5298fabf5359613ff5992cb57ff081
a04dfb81a26513a6b44a9b5490ad265f
8a02384832a59cc3e075ad545461060b
7bcab49bac815163cb80983dd51d5b1f
d76170ffd904d8291071e96efc3fb777
856c717b148d08a510f5687b8a8285dc
ffe737b98916dd15ef6235dee4266d3b
-----END OpenVPN Static key V1-----
</tls-auth>
      '';
    };
  };

  nixpkgs.config.allowUnfree = true;

  sound.enable = true;
  hardware.pulseaudio.enable = true;

  programs.fish.enable = true;

  users.users.lu = {
    isNormalUser = true;
    extraGroups = ["wheel" "networkmanager"];
    shell = pkgs.fish;
  };

  system.stateVersion = "18.09";
}
