# $OpenBSD: Makefile,v 1.37 2017/12/14 06:00:17 jca Exp $

COMMENT=		control and monitor storage systems using SMART

# XXX at update time check whether C++11 is actually needed
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

CONFIGURE_ARGS+=	--without-cxx11-option

.include <bsd.port.mk>
