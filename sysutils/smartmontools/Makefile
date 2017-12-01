# $OpenBSD: Makefile,v 1.36 2017/12/01 17:10:48 giovanni Exp $

COMMENT=		control and monitor storage systems using SMART

DISTNAME=		smartmontools-6.6
CATEGORIES=		sysutils

HOMEPAGE=		https://www.smartmontools.org/
MAINTAINER=		Giovanni Bechis <giovanni@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m ${COMPILER_LIBCXX} util
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=smartmontools/}

SEPARATE_BUILD=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--docdir=${PREFIX}/share/doc/smartmontools \
			--with-exampledir=${PREFIX}/share/examples/smartmontools \
			--with-libcap-ng=no \
			--without-drivedbdir \
			--without-gnupg
.include <bsd.port.mk>
