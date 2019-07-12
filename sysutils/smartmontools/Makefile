# $OpenBSD: Makefile,v 1.42 2019/07/12 20:49:51 sthen Exp $

COMMENT=		control and monitor storage systems using SMART

# XXX at update time check whether C++11 is actually needed
DISTNAME=		smartmontools-7.0
CATEGORIES=		sysutils
REVISION=		0

HOMEPAGE=		https://www.smartmontools.org/

# GPLv2+
PERMIT_PACKAGE=	Yes

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
