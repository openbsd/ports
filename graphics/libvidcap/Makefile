COMMENT=	video capture library

DISTNAME=	libvidcap-0.2.1
REVISION =	4
SHARED_LIBS=	vidcap	0.0
CATEGORIES=	graphics

HOMEPAGE=	https://libvidcap.sourceforge.net/
MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

SITES=		${SITE_SOURCEFORGE:=libvidcap/}

WANTLIB=	pthread m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

SEPARATE_BUILD= Yes
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
