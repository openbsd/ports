# $OpenBSD: Makefile,v 1.1.1.1 2004/12/12 23:27:50 jolan Exp $

COMMENT=	"library of optimized inner loops"
DISTNAME=	liboil-0.2.2
CATEGORIES=	devel
MASTER_SITES=	${HOMEPAGE}download/

HOMEPAGE=	http://www.schleef.org/liboil/

# LGPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

BUILD_DEPENDS+=	:pkgconfig->=0.15.0:devel/pkgconfig \
		:glib2->=2.4.7:devel/glib2

WANTLIB=m

CONFIGURE_STYLE=gnu

post-patch:
	@perl -pi -e 's|stdint\.h|inttypes.h|g' \
		${WRKSRC}/liboil/liboiltypes.h \
		${WRKSRC}/liboil/liboil.h

.include <bsd.port.mk>
