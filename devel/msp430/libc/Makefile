# $OpenBSD: Makefile,v 1.12 2012/04/17 12:46:17 jasper Exp $

COMMENT=		libc for msp430

DISTNAME=		${TARGET}-libc-20120224
PKGNAME=		${DISTNAME}

RUN_DEPENDS=		devel/msp430/gcc>=4.6.3
BUILD_DEPENDS=		${RUN_DEPENDS}

MAKE_ENV=		PREFIX=${PREFIX}
USE_GMAKE=		Yes

WRKSRC= 		${WRKDIST}/src/

CONFIGURE_STYLE=	# This space intentionally left blank.

SEPARATE_BUILD= 	No

.include <bsd.port.mk>
