# $OpenBSD: Makefile,v 1.3 2007/12/02 18:18:10 bernd Exp $

COMMENT=	immensly fast JPEG thumbnailer library
DISTNAME=	epeg-20071107

HOMEPAGE=	http://docs.enlightenment.org/api/epeg/html/

SHARED_LIBS=	epeg 0.0	# .0.9

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB= 		c

LIB_DEPENDS=		jpeg::graphics/jpeg

CONFIGURE_STYLE=	automake autoconf
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
