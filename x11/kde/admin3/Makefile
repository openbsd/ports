# $OpenBSD: Makefile,v 1.42 2013/07/08 14:03:29 zhuk Exp $

COMMENT = 		K Desktop Environment, admin tools
CATEGORIES =		x11 x11/kde
VERSION =		3.5.10
DISTNAME =		kdeadmin-${VERSION}
MODKDE_VERSION ?=	3.5.8

MODULES =	x11/kde devel/gettext

RUN_DEPENDS +=	devel/desktop-file-utils \
		x11/gtk+2,-guic
LIB_DEPENDS =	x11/kde/libs3

SEPARATE_BUILD =	flavored

REVISION =	8
WANTLIB =	ICE SM X11 Xext Xfixes Xrender Xt art_lgpl_2 c expat fam
WANTLIB +=	fontconfig freetype idn kabc kresources kwalletclient
WANTLIB +=	lib/kde3/DCOP lib/kde3/kdecore>=6 lib/kde3/kdefx
WANTLIB +=	lib/kde3/kdeprint lib/kde3/kdesu lib/kde3/kdeui lib/kde3/kio
WANTLIB +=	lib/kde3/kntlm lib/kde3/kparts m png pthread pthread-stubs
WANTLIB +=	stdc++ util vcard xcb z

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/HTML/en/common

.include <bsd.port.mk>
