# $OpenBSD: Makefile,v 1.15 2016/01/31 13:35:28 jasper Exp $

COMMENT=	simple password generator

DISTNAME=	pwgen-2.07
REVISION=	2
CATEGORIES=	security

MAINTAINER=	Robert Nagy <robert@openbsd.org>

HOMEPAGE=	http://sourceforge.net/projects/pwgen/

MASTER_SITES= 	${MASTER_SITE_SOURCEFORGE:=pwgen/}

# GPL
PERMIT_PACKAGE_CDROM=	Yes

# uses pledge()
WANTLIB=		c

AUTOCONF_VERSION=2.69
CONFIGURE_STYLE=autoconf
MAKE_FLAGS=	WALL_OPTS=""

NO_TEST=	Yes

.include <bsd.port.mk>
