# $OpenBSD: Makefile,v 1.25 2005/12/27 15:20:20 steven Exp $

COMMENT=	"color font rendering library for X"

DISTNAME=	fnlib-0.5
PKGNAME=	${DISTNAME}p0
SHARED_LIBS=		Fnlib	5.0
MODGNU_SHARED_LIBS=	Fnlib	''
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=enlightenment/}

LIB_DEPENDS=	Imlib.19::graphics/imlib

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext jpeg m png tiff ungif z

USE_LIBTOOL=	Yes
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
