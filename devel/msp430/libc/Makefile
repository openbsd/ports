# $OpenBSD: Makefile,v 1.10 2011/11/11 18:38:17 jasper Exp $

COMMENT=		libc for msp430

DISTNAME=		${TARGET}-libc-20110612
PKGNAME=		${DISTNAME}
REVISION=		2

LTS_PATCHES=		msp430-libc-20110612-sf3387164.patch \
			msp430-libc-20110612-sf3402836.patch

RUN_DEPENDS=		devel/msp430/gcc>=4.5.3
BUILD_DEPENDS=		${RUN_DEPENDS}

MAKE_ENV=		PREFIX=${PREFIX}
USE_GMAKE=		Yes

WRKSRC= 		${WRKDIST}/src/

CONFIGURE_STYLE=	# This space intentionally left blank.

NO_REGRESS=		Yes

.include <bsd.port.mk>
