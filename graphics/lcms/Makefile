# $OpenBSD: Makefile,v 1.12 2006/03/16 11:03:07 espie Exp $

COMMENT=	"color management library"

DISTNAME=	lcms-1.15
PKGNAME=	${DISTNAME}
SHARED_LIBS=	lcms	1.15
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=lcms/}

HOMEPAGE=	http://www.littlecms.com/

LIB_DEPENDS+=	jpeg::graphics/jpeg \
		tiff::graphics/tiff

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m z

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${WRKBUILD}/src/.libs -L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lcms
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/lcms

.include <bsd.port.mk>
