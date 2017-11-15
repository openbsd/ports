# $OpenBSD: Makefile,v 1.21 2017/11/15 21:28:05 sthen Exp $

COMMENT=	remote administration software

DISTNAME=     	radmind-1.14.1
REVISION=	1
CATEGORIES=	sysutils

HOMEPAGE=	http://rsug.itd.umich.edu/software/radmind/

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c crypto ssl z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=radmind/}
NO_TEST=		Yes

CONFIGURE_ARGS=	--disable-profiled

LIBTOOL_FLAGS=	--tag=disable-shared
CONFIGURE_STYLE=gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC} ${WRKSRC}/libsnet

.include <bsd.port.mk>
