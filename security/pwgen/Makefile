# $OpenBSD: Makefile,v 1.8 2010/10/18 21:41:47 espie Exp $

COMMENT=	simple password generator

DISTNAME=	pwgen-2.06
PKGNAME=	${DISTNAME}p0
CATEGORIES=	security

MAINTAINER=	Robert Nagy <robert@openbsd.org>

HOMEPAGE=	http://sourceforge.net/projects/pwgen/

MASTER_SITES= 	${MASTER_SITE_SOURCEFORGE:=pwgen/}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

AUTOCONF_VERSION=2.13
CONFIGURE_STYLE=autoconf
MAKE_FLAGS=	WALL_OPTS=""
USE_GROFF =	Yes

NO_REGRESS=	Yes

.include <bsd.port.mk>
