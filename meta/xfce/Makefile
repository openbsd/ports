# $OpenBSD: Makefile,v 1.20 2019/11/11 18:02:23 landry Exp $

COMMENT-main =		Xfce desktop meta-package (base installation)
COMMENT-extras =	Xfce desktop meta-package (full installation)

V =		4.14
PKGNAME=	xfce-${V}

PKGNAME-main =		xfce-${V}
PKGNAME-extras =	xfce-extras-${V}

MAINTAINER =	Landry Breuil <landry@openbsd.org>

MULTI_PACKAGES =	-main -extras

# minimal dependencies for a working desktop
# will install garcon/exo/libxfce4util/libxfce4ui
RUN_DEPENDS-main += \
		x11/xfce4/xfce4-panel \
		x11/xfce4/xfce4-session \
		x11/xfce4/xfce4-settings \
		x11/xfce4/xfconf \
		x11/xfce4/xfdesktop \
		x11/xfce4/thunar \
		x11/xfce4/xfwm4

# theme packages
RUN_DEPENDS-main += \
		x11/xfce4/xfwm4-themes \
		x11/greybird
# x11/xfce4/xfce4-icon-theme (outdated)

# common apps
RUN_DEPENDS-main += \
		x11/xfce4/terminal \
		x11/xfce4/ristretto \
		x11/xfce4/mousepad \
		x11/xfce4/xfce4-appfinder \
		x11/xfce4/xfce4-mixer \
		x11/xfce4/xfce4-notifyd \
		x11/xfce4/xfce4-screensaver \
		x11/xfce4/xfce4-taskmanager \
		x11/xfce4/tumbler

# x11/xfce4/orage (outdated)

# extra apps
RUN_DEPENDS-extras += \
		STEM-=${V}:${BASE_PKGPATH},-main \
		textproc/catfish \
		x11/gigolo \
		x11/xfce4/xfdashboard \
		x11/xfce4/xfmpc \
		x11/xfce4/parole

# thunar plugins
RUN_DEPENDS-extras += \
		x11/xfce4/thunar-archive \
		x11/xfce4/thunar-media-tags \
		x11/xfce4/thunar-vcs

# panel plugins
RUN_DEPENDS-extras += \
		x11/xfce4/xfce4-battery \
		x11/xfce4/xfce4-clipman \
		x11/xfce4/xfce4-cpugraph \
		x11/xfce4/xfce4-datetime \
		x11/xfce4/xfce4-dict \
		x11/xfce4/xfce4-diskperf \
		x11/xfce4/xfce4-fsguard \
		x11/xfce4/xfce4-genmon \
		x11/xfce4/xfce4-mailwatch \
		x11/xfce4/xfce4-mount \
		x11/xfce4/xfce4-mpc \
		x11/xfce4/xfce4-netload \
		x11/xfce4/xfce4-notes \
		x11/xfce4/xfce4-places \
		x11/xfce4/xfce4-screenshooter \
		x11/xfce4/xfce4-smartbookmark \
		x11/xfce4/xfce4-statusnotifier \
		x11/xfce4/xfce4-systemload \
		x11/xfce4/xfce4-time-out \
		x11/xfce4/xfce4-verve \
		x11/xfce4/xfce4-wavelan \
		x11/xfce4/xfce4-weather \
		x11/xfce4/xfce4-whiskermenu

.include <bsd.port.mk>
