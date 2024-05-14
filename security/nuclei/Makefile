COMMENT =		fast and customizable vulnerability scanner

MODGO_MODNAME =		github.com/projectdiscovery/nuclei/v3
MODGO_VERSION =		v3.2.6

DISTNAME =		nuclei-${MODGO_VERSION}

CATEGORIES =		security

HOMEPAGE =		https://nuclei.projectdiscovery.io

MAINTAINER =		Xi Lu <lx@shellcodes.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += 		c pthread
NO_TEST	=		Yes

MODULES +=		lang/go

.include "modules.inc"
.include <bsd.port.mk>
