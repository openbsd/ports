# $OpenBSD: Makefile,v 1.58 2013/10/05 07:34:41 espie Exp $

COMMENT = 		some useless KDE applications
CATEGORIES =		x11 x11/kde games
VERSION =		3.5.10
DISTNAME =		kdetoys-${VERSION}
MODKDE_VERSION ?=	3.5.8
PKGSPEC =		kdetoys->=3,<4

MODULES =		x11/kde devel/gettext

RUN_DEPENDS +=		devel/desktop-file-utils \
			x11/gtk+2,-guic
LIB_DEPENDS = 		x11/kde/libs3

SEPARATE_BUILD =	flavored

REVISION = 10
WANTLIB =	ICE SM X11 Xext Xfixes Xrender Xt art_lgpl_2 c expat fam
WANTLIB +=	fontconfig freetype idn jpeg lib/kde3/DCOP
WANTLIB +=	lib/kde3/kdecore>=6 lib/kde3/kdefx lib/kde3/kdeprint
WANTLIB +=	lib/kde3/kdesu lib/kde3/kdeui lib/kde3/khtml lib/kde3/kio
WANTLIB +=	lib/kde3/kjs lib/kde3/kparts lib/kde3/kscreensaver
WANTLIB +=	lib/kde3/kutils lib/kde3/kwalletclient m pcre pcreposix png
WANTLIB +=	pthread pthread-stubs stdc++ util xcb z

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/HTML/en/common

.include <bsd.port.mk>
