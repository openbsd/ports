# $OpenBSD: Makefile,v 1.14 2009/08/10 06:33:43 kili Exp $

COMMENT-main =	another eMule p2p client
COMMENT-web =	webserver interface to amuled
COMMENT-daemon =stand-alone daemon/cmdline for amule

V =		2.1.3
DISTNAME =	aMule-$V
CATEGORIES =	net

HOMEPAGE =	http://www.amule.org/
MULTI_PACKAGES =-main -web -daemon
PKGNAME-main =	amule-$Vp4
PKGNAME-daemon =amuled-$V
PKGNAME-web =	amuleweb-$V

# GPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MAINTAINER =	Marc Espie <espie@openbsd.org>
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=amule/}
EXTRACT_SUFX =	.tar.bz2

RUN_DEPENDS-main=${RUN_DEPENDS} \
		:desktop-file-utils-*:devel/desktop-file-utils

LIB_DEPENDS =	wx_base_net,wx_base:wxWidgets-gtk2->=2.6.3:x11/wxWidgets
WANTLIB =	c m pthread z stdc++

USE_X11 =	Yes
USE_GMAKE =	Yes

WANTLIB-main =	${WANTLIB} X11 pthread-stubs wx_gtk2_adv wx_gtk2_core xcb
WANTLIB-daemon =${WANTLIB} readline termcap
WANTLIB-web =	${WANTLIB} png readline termcap

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-debug \
			--with-x \
			--enable-amule-daemon \
			--enable-amulecmd \
			--enable-webserver \
			--enable-amule-gui

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include"

post-install:
	${INSTALL_SCRIPT} ${WRKDIST}/src/utils/scripts/mldonkey_importer.pl \
		${PREFIX}/bin/mldonkey_importer

NO_REGRESS =		Yes

.include <bsd.port.mk>
