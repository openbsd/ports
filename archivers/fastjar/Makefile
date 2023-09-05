COMMENT =	Sun JDK's jar command written entirely in C

DISTNAME =	fastjar-0.94
CATEGORIES =	archivers

HOMEPAGE =	http://fastjar.sourceforge.net/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE =		Yes

WANTLIB =		c z

SITES =			${SITE_SOURCEFORGE:=fastjar/}

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

post-extract:
	rm ${WRKSRC}/jartool.c.*

.include <bsd.port.mk>
