# $OpenBSD: Makefile,v 1.25 2022/01/14 11:01:09 tb Exp $

COMMENT=	remote administration software

DISTNAME=     	radmind-1.14.1
REVISION=	4
CATEGORIES=	sysutils

HOMEPAGE=	http://rsug.itd.umich.edu/software/radmind/

# License: BSD
PERMIT_PACKAGE=	Yes
WANTLIB=		c crypto ssl z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=radmind/}
NO_TEST=		Yes

CONFIGURE_ARGS=	--disable-profiled

LIBTOOL_FLAGS=	--tag=disable-shared
CONFIGURE_STYLE=gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC} ${WRKSRC}/libsnet

.include <bsd.port.mk>
