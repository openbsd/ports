COMMENT=		open-proxy monitor irc bot

DIST_TUPLE=		github ircd-hybrid hopm 1.1.10 .

CATEGORIES=		net

HOMEPAGE=		https://github.com/ircd-hybrid/hopm

MAINTAINER=		Chaz Kettleson <chaz@pyr3x.com>

# GPLv2+
PERMIT_PACKAGE=		Yes

WANTLIB=		c crypto ssl

CONFIGURE_STYLE=	gnu

FAKE_FLAGS=		sysconfdir="${PREFIX}/share/examples/hopm/"

.include <bsd.port.mk>
