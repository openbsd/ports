# $OpenBSD: Makefile,v 1.75 2013/10/05 07:34:40 espie Exp $

COMMENT = 		K Desktop Environment, network applications
CATEGORIES =		x11 x11/kde
VERSION =		3.5.10
DISTNAME =		kdenetwork-${VERSION}
MODKDE_VERSION =	3.5.8
PKGSPEC =		kdenetwork->=3,<4
SHARED_LIBS +=	kopete               2.0      # .1.0
SHARED_LIBS +=	kopete_videodevice   1.0      # .0.0
SHARED_LIBS +=	kopete_msn_shared    1.0      # .0.0
SHARED_LIBS +=	kopete_oscar         3.0      # .2.0
SHARED_LIBS +=	rss                  2.0      # .1.0

MODULES =	x11/kde devel/gettext

RUN_DEPENDS +=	devel/desktop-file-utils \
		x11/gtk+2,-guic
LIB_DEPENDS = 	x11/kde/libs3 \
		audio/xmms \
		devel/libidn \
		net/meanwhile
RUN_DEPENDS +=	security/qca-tls

SEPARATE_BUILD =	flavored

REVISION = 	10
WANTLIB = GL ICE SM X11 Xau Xcursor Xdamage Xdmcp Xext Xfixes Xft Xi Xinerama \
	Xmu Xrandr Xrender Xss Xt Xtst Xxf86vm art_lgpl_2 c crypto drm expat \
	fam fontconfig freetype gdk glib glib-2.0 gmodule gmodule-2.0 gtk idn \
	jpeg lcms lib/kde3/DCOP lib/kde3/kabc lib/kde3/kdecore>=6 \
	lib/kde3/kdefx lib/kde3/kdeprint lib/kde3/kdesu lib/kde3/kdeui \
	lib/kde3/kdnssd lib/kde3/khtml lib/kde3/kio lib/kde3/kjs \
	lib/kde3/knewstuff lib/kde3/kparts lib/kde3/kresources lib/kde3/kspell \
	lib/kde3/ktexteditor lib/kde3/kutils lib/kde3/kwalletclient \
	lib/kde3/vcard m meanwhile mng pcre pcreposix png pthread \
	pthread-stubs ssl stdc++ util xcb xml2 xmms xslt z


post-configure:
	@touch ${WRKSRC}/Makefile.in
	@touch ${WRKBUILD}/Makefile

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/HTML/en/common

.include <bsd.port.mk>
