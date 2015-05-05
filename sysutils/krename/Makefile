# $OpenBSD: Makefile,v 1.24 2015/05/05 17:00:19 sthen Exp $

SHARED_ONLY =	Yes

COMMENT =	powerful KDE batch file renamer

DISTNAME =	krename-3.0.14
REVISION =	14

SRCFILES =	${DISTNAME}.tar.bz2
DOCFILES =	krename-3.0.12.pdf \
		krename-3.0.3-de.pdf \
		krename-3.0.3-fr.pdf \
		krename-3.0.3-ru.pdf

DISTFILES =	${SRCFILES} ${DOCFILES}
EXTRACT_ONLY =	${SRCFILES}

CATEGORIES =	sysutils x11 x11/kde
HOMEPAGE =	http://www.krename.net/

MAINTAINER =	Vadim Zhukov <zhuk@openbsd.org>
PORTROACH =	limit:^3\.0

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${KDE}/DCOP>=7 ${KDE}/kdecore ${KDE}/kdefx ${KDE}/kdesu
WANTLIB += ${KDE}/kdeui ${KDE}/kio ${KDE}/kparts ${KDE}/kwalletclient
WANTLIB += GL ICE SM X11 X11-xcb Xau Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xft Xi Xinerama Xmu Xrandr Xrender Xt Xxf86vm art_lgpl_2>=5 c
WANTLIB += drm expat fam fontconfig freetype glapi idn>=16.30 jpeg lcms
WANTLIB += m mng png pthread pthread-stubs stdc++ util xcb xcb-dri2
WANTLIB += xcb-glx z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=krename/}

MODULES =	x11/kde devel/gettext

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/kde/base3 \
		x11/gtk+3,-guic
LIB_DEPENDS =	graphics/libart \
		devel/libidn>=1.1 \
		x11/kde/libs3

USE_GMAKE =		Yes
LIBTOOL_FLAGS =		--tag=disable-static

AUTOCONF_VERSION =	2.60
CONFIGURE_STYLE =	autoconf
CONFIGURE_ENV =		${MODKDE_CONFIGURE_ENV}
CONFIGURE_ARGS =	${MODKDE_CONFIGURE_ARGS} \
			--enable-libsuffix=""

PORTHOME =		${WRKDIR}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/doc/en/HTML/index.html

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/krename
	${INSTALL_DATA} ${DOCFILES:S@^@${DISTDIR}/@} ${PREFIX}/share/doc/krename

.include <bsd.port.mk>
