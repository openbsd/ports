# $OpenBSD: Makefile,v 1.5 2006/08/03 12:53:18 espie Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"XMMS visualization plugin, to display Kjofol skins"

VERSION=	0.95
DISTNAME=	kint_xmms-${VERSION}
PKGNAME=	xmms-kj-${VERSION}
CATEGORIES=	graphics
HOMEPAGE=	http://www.csse.monash.edu.au/~timf/

MAINTAINER=	Wilbern Cobb <wcobb@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xi gdk glib gmodule gtk iconv intl m z

MASTER_SITES=	${HOMEPAGE} \
		http://mirror.csoft.org/xmms-kj/

LIB_DEPENDS=	xmms.>=2::audio/xmms \
		png.>=3::graphics/png

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
