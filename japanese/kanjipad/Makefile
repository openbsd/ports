# $OpenBSD: Makefile,v 1.6 2008/01/04 17:48:36 espie Exp $

COMMENT=japanese handwriting recognition
CATEGORIES=japanese
HOMEPAGE=http://www.gtk.org/~otaylor/kanjipad/

DISTNAME=kanjipad-1.2.1
PKGNAME=${DISTNAME}p0
MASTER_SITES=ftp://ftp.gtk.org/pub/users/otaylor/kanjipad/

# GPL
PERMIT_PACKAGE_FTP=Yes
PERMIT_PACKAGE_CDROM=Yes
PERMIT_DISTFILES_FTP=Yes
PERMIT_DISTFILES_CDROM=Yes

LIB_DEPENDS=gmodule,gtk,gdk::x11/gtk+ \
	glib::devel/glib

MODULES=	devel/gettext
WANTLIB=	c Xext Xi X11 m

USE_X11=	Yes

MAKE_FLAGS=OPTIMIZE='${CFLAGS}' PREFIX=${PREFIX}
FAKE_FLAGS=PREFIX=${WRKINST}${TRUEPREFIX}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/kanjipad
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/kanjipad

.include <bsd.port.mk>
