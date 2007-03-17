# $OpenBSD: Makefile,v 1.14 2007/03/17 15:22:42 steven Exp $

SHARED_ONLY=	Yes

COMMENT=	"high speed arbitrary-size integer math"

MODULES=	cpan
DISTNAME=	Math-GMP-2.03
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	math

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	gmp.>=4::devel/gmp

CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
