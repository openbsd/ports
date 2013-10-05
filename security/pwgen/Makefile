# $OpenBSD: Makefile,v 1.11 2013/10/05 12:30:45 naddy Exp $

COMMENT=	simple password generator

DISTNAME=	pwgen-2.06
REVISION =	0
CATEGORIES=	security

MAINTAINER=	Robert Nagy <robert@openbsd.org>

HOMEPAGE=	http://sourceforge.net/projects/pwgen/

MASTER_SITES= 	${MASTER_SITE_SOURCEFORGE:=pwgen/}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

AUTOCONF_VERSION=2.13
CONFIGURE_STYLE=autoconf
MAKE_FLAGS=	WALL_OPTS=""

NO_TEST=	Yes

.include <bsd.port.mk>
