# $OpenBSD: Makefile,v 1.16 2018/01/18 04:09:40 danj Exp $

COMMENT=	simple password generator

DISTNAME=	pwgen-2.08
CATEGORIES=	security

MAINTAINER=	Robert Nagy <robert@openbsd.org>

HOMEPAGE=	https://sourceforge.net/projects/pwgen/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pwgen/}

# GPL
PERMIT_PACKAGE_CDROM=	Yes

# uses pledge()
WANTLIB=		c

AUTOCONF_VERSION=2.69
CONFIGURE_STYLE=autoconf
MAKE_FLAGS=	WALL_OPTS=""

NO_TEST=	Yes

.include <bsd.port.mk>
