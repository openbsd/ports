# $OpenBSD: Makefile,v 1.16 2013/03/21 08:48:54 ajacoutot Exp $

SHARED_ONLY =	Yes

COMMENT =	powerful KDE batch file renamer

DISTNAME =	krename-3.0.14
REVISION =	8

SRCFILES =	${DISTNAME}.tar.bz2
DOCFILES =	krename-3.0.12.pdf \
		krename-3.0.3-de.pdf \
		krename-3.0.3-fr.pdf \
		krename-3.0.3-ru.pdf

DISTFILES =	${SRCFILES} ${DOCFILES}
EXTRACT_ONLY =	${SRCFILES}

CATEGORIES =	sysutils x11 x11/kde
HOMEPAGE =	http://www.krename.net/

MAINTAINER =	Vadim Zhukov <persgray@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	GL Xcursor Xdamage Xfixes Xft Xi Xinerama Xmu Xrandr Xt Xxf86vm
WANTLIB +=	drm expat fontconfig freetype lcms mng ICE SM X11 Xau Xdmcp Xext
WANTLIB +=	Xrender c jpeg m png pthread pthread-stubs stdc++ util xcb z
WANTLIB +=	art_lgpl_2>=5 idn>=16.30 DCOP>=7 kdecore kdefx kdesu kdeui kio
WANTLIB +=	kparts kwalletclient


MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=krename/}

MODULES =	x11/kde devel/gettext

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/kde/base3 \
		x11/gtk+2,-guic
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
