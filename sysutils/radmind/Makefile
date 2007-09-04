# $OpenBSD: Makefile,v 1.9 2007/09/04 20:52:13 jasper Exp $

COMMENT=	remote administration software

DISTNAME=      	radmind-1.9.0
CATEGORIES=	sysutils

HOMEPAGE=	http://rsug.itd.umich.edu/software/radmind/

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto ssl z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=radmind/}
NO_REGRESS=		Yes

CONFIGURE_ARGS=	--disable-profiled

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-shared
CONFIGURE_STYLE=gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC} ${WRKSRC}/libsnet

.include <bsd.port.mk>
