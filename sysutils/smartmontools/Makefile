# $OpenBSD: Makefile,v 1.32 2017/07/23 09:26:29 espie Exp $

ONLY_FOR_ARCHS=		amd64 i386 powerpc

COMMENT=		control and monitor storage systems using SMART

DISTNAME=		smartmontools-6.5
REVISION =		1
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
