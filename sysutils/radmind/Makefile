# $OpenBSD: Makefile,v 1.16 2013/03/11 11:41:32 espie Exp $

COMMENT=	remote administration software

DISTNAME=      	radmind-1.13.0
REVISION =	1
CATEGORIES=	sysutils

HOMEPAGE=	http://rsug.itd.umich.edu/software/radmind/

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c crypto ssl z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=radmind/}
NO_TEST=		Yes

CONFIGURE_ARGS=	--disable-profiled

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-shared
USE_GROFF =	Yes
CONFIGURE_STYLE=gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC} ${WRKSRC}/libsnet

.include <bsd.port.mk>
