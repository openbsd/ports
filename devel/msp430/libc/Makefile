# $OpenBSD: Makefile,v 1.13 2012/04/17 13:01:56 jasper Exp $

COMMENT=		libc for msp430

TOOL=			${TARGET}-libc
TOOL_V= 		20120224

PKGNAME=		${DISTNAME} # We don't want 'msp430' prepended.

PATCHFILES=		# This space intentionally left blank.
CONFIGURE_STYLE=	# This space intentionally left blank.

RUN_DEPENDS=		devel/msp430/gcc>=4.6.3
BUILD_DEPENDS=		${RUN_DEPENDS}

MAKE_ENV=		PREFIX=${PREFIX}
USE_GMAKE=		Yes

WRKSRC= 		${WRKDIST}/src/

SEPARATE_BUILD= 	No

.include <bsd.port.mk>
