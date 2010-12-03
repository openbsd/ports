# $OpenBSD: Makefile,v 1.23 2010/12/03 11:45:39 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	high speed arbitrary-size integer math

MODULES=	cpan
DISTNAME=	Math-GMP-2.05
REVISION=	1
CATEGORIES=	math

# LGPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS =		devel/gmp
WANTLIB =		gmp>=4

CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
USE_GROFF =	Yes

.include <bsd.port.mk>
