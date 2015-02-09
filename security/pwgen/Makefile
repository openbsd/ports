# $OpenBSD: Makefile,v 1.13 2015/02/09 18:56:11 jasper Exp $

COMMENT=	simple password generator

DISTNAME=	pwgen-2.07
REVISION=	0
CATEGORIES=	security

MAINTAINER=	Robert Nagy <robert@openbsd.org>

HOMEPAGE=	http://sourceforge.net/projects/pwgen/

MASTER_SITES= 	${MASTER_SITE_SOURCEFORGE:=pwgen/}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

AUTOCONF_VERSION=2.69
CONFIGURE_STYLE=autoconf
MAKE_FLAGS=	WALL_OPTS=""

NO_TEST=	Yes

.include <bsd.port.mk>
