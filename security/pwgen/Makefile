# $OpenBSD: Makefile,v 1.10 2013/03/11 11:41:27 espie Exp $

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
USE_GROFF =	Yes

NO_TEST=	Yes

.include <bsd.port.mk>
