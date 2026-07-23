COMMENT=	UDP latency tester, round-trip/1-way/jitter etc

MODGO_MODNAME=	github.com/heistp/irtt
MODGO_VERSION=	v0.9.2

DISTNAME=	irtt-${MODGO_VERSION}

CATEGORIES=	net

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c pthread

MODULES=	lang/go
HOMEPAGE=	https://github.com/heistp/irtt

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/*.1 ${PREFIX}/man/man1/

.include "modules.inc"
.include <bsd.port.mk>
