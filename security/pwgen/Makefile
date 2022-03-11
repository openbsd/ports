COMMENT=	simple password generator

DISTNAME=	pwgen-2.08
CATEGORIES=	security

MAINTAINER=	Robert Nagy <robert@openbsd.org>

HOMEPAGE=	https://sourceforge.net/projects/pwgen/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pwgen/}

# GPL
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB=		c

AUTOCONF_VERSION=2.69
CONFIGURE_STYLE=autoconf
MAKE_FLAGS=	WALL_OPTS=""

NO_TEST=	Yes

.include <bsd.port.mk>
