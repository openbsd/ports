# $OpenBSD: Makefile,v 1.22 2004/11/30 01:06:34 espie Exp $

COMMENT=	"color font rendering library for X"

DISTNAME=	fnlib-0.5
CATEGORIES=	graphics
MASTER_SITES=	ftp://ftp.squish.org/pub/enlightenment/enlightenment/libs/ \
		ftp://ftp.shellhung.org/pub/Mirror/enlightenment/fnlib/ \
		ftp://ftp.dti.ad.jp/pub/X/enlightenment/enlightenment/libs/

LIB_DEPENDS=	Imlib.19::graphics/imlib

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext jpeg m png tiff ungif z

USE_GMAKE=	Yes
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/fnlib
	mv -f ${WRKINST}${SYSCONFDIR}/* ${PREFIX}/share/examples/fnlib

.include <bsd.port.mk>
