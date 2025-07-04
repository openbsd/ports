COMMENT =	fast lossless compression, implementing Golomb-Rice coding

VERSION =	1.1.4
DISTNAME =	libaec-$(VERSION)

SHARED_LIBS +=	aec                  0.0      # 1.4
SHARED_LIBS +=	sz                   0.0      # 2.1

CATEGORIES =		archivers

HOMEPAGE =		https://gitlab.dkrz.de/k202009/libaec

MAINTAINER =		Marco van Hulten <marco@hulten.org>

# BSD-2-Clause
PERMIT_PACKAGE =	Yes

SITES =			https://github.com/MathisRosenhauer/libaec/releases/download/v$(VERSION)/

SEPARATE_BUILD =	Yes

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
