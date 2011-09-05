# $OpenBSD: Makefile,v 1.4 2011/09/05 08:15:14 jasper Exp $

COMMENT=		GNU libc for msp430

DISTNAME=		${TARGET}-libc-20110612

RUN_DEPENDS=		devel/msp430/gcc>=4.5.3
BUILD_DEPENDS=		${RUN_DEPENDS}

MAKE_ENV=		PREFIX=${PREFIX}
USE_GMAKE=		Yes

WRKDIST=		${WRKDIR}/${DISTNAME}/src/

CONFIGURE_STYLE=	# This space intentionally left blank.

NO_REGRESS=		Yes

.include <bsd.port.mk>
