# $OpenBSD: Makefile,v 1.39 2018/10/24 14:28:10 sthen Exp $

COMMENT=		control and monitor storage systems using SMART

# XXX at update time check whether C++11 is actually needed
DISTNAME=		smartmontools-6.6
CATEGORIES=		sysutils
REVISION=		1

HOMEPAGE=		https://www.smartmontools.org/
MAINTAINER=		Giovanni Bechis <giovanni@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m ${COMPILER_LIBCXX} util

COMPILER =		base-clang ports-gcc base-gcc
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
