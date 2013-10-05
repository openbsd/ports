# $OpenBSD: Makefile,v 1.44 2013/10/05 07:34:41 espie Exp $

COMMENT = 		web development tool
CATEGORIES =		x11 x11/kde
VERSION =		3.5.10
DISTNAME =		kdewebdev-${VERSION}
MODKDE_VERSION =	3.5.8
PKGSPEC =		kdewebdev->=3,<4
SHARED_LIBS +=	kommanderplugin      1.0      # .0.0
SHARED_LIBS +=	kommanderwidget      1.0      # .0.0
SHARED_LIBS +=	kommanderwidgets     1.0      # .0.0

REVISION =	10

MODULES =	x11/kde devel/gettext

RUN_DEPENDS +=	devel/desktop-file-utils \
		x11/gtk+2,-guic
LIB_DEPENDS =	x11/kde/libs3 \
    		textproc/libxslt \
    		x11/kde/sdk3

SEPARATE_BUILD = 	flavored

# bug in our libtool currently turning libcvsservices.a -lcvsservices into
# libcvsservices.a libcvsservices.a at end of link, thus making the final
# link fail on undefined symbols, as this is a library...

USE_LIBTOOL =		gnu

WANTLIB =	ICE SM X11 Xext Xfixes Xrender Xt art_lgpl_2 c cvsservice
WANTLIB +=	expat exslt fam fontconfig freetype gcrypt gpg-error
WANTLIB +=	idn jpeg kmdi knewstuff lib/kde3/DCOP lib/kde3/kabc
WANTLIB +=	lib/kde3/katepartinterfaces lib/kde3/kdecore>=6
WANTLIB +=	lib/kde3/kdefx lib/kde3/kdeprint lib/kde3/kdesu
WANTLIB +=	lib/kde3/kdeui lib/kde3/khtml lib/kde3/kio lib/kde3/kjs
WANTLIB +=	lib/kde3/kparts lib/kde3/kresources lib/kde3/kspell
WANTLIB +=	lib/kde3/ktexteditor lib/kde3/kutils lib/kde3/kwalletclient
WANTLIB +=	lib/kde3/vcard m pcre pcreposix png pthread pthread-stubs
WANTLIB +=	stdc++ util xcb xml2 xslt z

# don't pick up gtar
CONFIGURE_ENV=		TAR=tar

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/HTML/en/common

.include <bsd.port.mk>
