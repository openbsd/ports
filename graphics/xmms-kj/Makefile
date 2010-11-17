# $OpenBSD: Makefile,v 1.13 2010/11/17 19:41:52 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	XMMS visualization plugin, to display Kjofol skins

VERSION=	0.95
DISTNAME=	kint_xmms-${VERSION}
PKGNAME=	xmms-kj-${VERSION}
REVISION =	1
CATEGORIES=	graphics
HOMEPAGE=	http://www.csse.monash.edu.au/~timf/

MAINTAINER=	Wilbern Cobb <wcobb@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xi gdk glib gmodule gtk  m \
			pthread-stubs xcb z xmms>=2 png>=3

MASTER_SITES=	${HOMEPAGE} \
		http://mirror.csoft.org/xmms-kj/

LIB_DEPENDS=	audio/xmms \
		graphics/png

MODULES=	devel/gettext

WRKDIST=	${WRKDIR}/xmms-kj
MAKE_FILE=      makefile
ALL_TARGET=	vislib
NO_REGRESS=	Yes

CFLAGS+=	-I${LOCALBASE}/include/libpng
MAKE_FLAGS=	CC="${CC}"
MTREE_FILE=	${FILESDIR}/mtree

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/libkjofol.so \
	    ${PREFIX}/lib/xmms/Visualization
	${INSTALL_DATA} ${WRKDIST}/default.zip \
	    ${PREFIX}/share/xmms/kjofol

.include <bsd.port.mk>
