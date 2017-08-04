# $OpenBSD: Makefile,v 1.34 2017/08/04 23:37:41 juanfra Exp $

ONLY_FOR_ARCHS=		amd64 i386 mips64el powerpc

COMMENT=		control and monitor storage systems using SMART

DISTNAME=		smartmontools-6.5
REVISION =		2
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
			--without-drivedbdir
.include <bsd.port.mk>
