COMMENT=	NET-SNMP-EXTEND-MIB exporter via AgentX

V=		1.0
DISTNAME =	snmpd_extend-${V}

CATEGORIES=	net
HOMEPAGE=	https://src.imperialat.at/?action=summary&path=snmpd_extend.git

MAINTAINER=	Martijn van Duren <martijn@openbsd.org>

SITES=		https://src.imperialat.at/releases/

# ISC
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB=	c agentx event util
NO_TEST=	Yes
MAKE_FLAGS=	CC="${CC}"

.include <bsd.port.mk>
