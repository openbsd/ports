# $OpenBSD: Makefile,v 1.8 2011/11/11 17:24:12 jasper Exp $

COMMENT=		GNU libc for msp430

DISTNAME=		${TARGET}-libc-20110612
REVISION=		1

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
