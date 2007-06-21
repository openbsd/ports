# $OpenBSD: Makefile,v 1.4 2007/06/21 13:31:47 ajacoutot Exp $

COMMENT=	"GNUstep base library"

DISTNAME=	gnustep-base-1.14.0
PKGNAME=	${DISTNAME}p2
SHARED_LIBS=	gnustep-base 1.14	# .1.14
CATEGORIES=	devel

HOMEPAGE=	http://www.gnustep.org/

WANTLIB=	c crypto iberty iconv m objc pthread ssl xml2 z

MASTER_SITES=	ftp://ftp.gnustep.org/pub/gnustep/core/

MODULES=	x11/gnustep
LIB_DEPENDS=	avcall.>=1,callback.>=1::devel/ffcall \
		gmp.>=7::devel/gmp \
		xslt.>=3::textproc/libxslt

CONFIGURE_STYLE=simple
CONFIGURE_ARGS=	--disable-procfs

pre-configure:
	@perl -pi -e 's,^MAJOR_VERSION=.*,MAJOR_VERSION=${LIBgnustep-base_VERSION:R},g;' \
		-e 's,^MINOR_VERSION=.*,MINOR_VERSION=${LIBgnustep-base_VERSION:E},g' \
		${WRKSRC}/Version

post-install:
	@rm ${PREFIX}/lib/GNUstep/Libraries/gnustep-base/Versions/1.14/Resources/NSTimeZones/.README.swp

.include <bsd.port.mk>
