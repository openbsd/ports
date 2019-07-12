# $OpenBSD: Makefile,v 1.16 2019/07/12 20:44:03 sthen Exp $

COMMENT=		ANSI C command line parser

DISTNAME=		argtable2-13
PKGNAME=		argtable-2.13
SHARED_LIBS +=	argtable2            1.2      # .1.8
CATEGORIES=		devel
REVISION=		0

HOMEPAGE=		http://argtable.sourceforge.net/

# LGPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=argtable/}

CONFIGURE_STYLE=	gnu
FAKE_FLAGS=		exampledir=${PREFIX}/share/examples/argtable2

.include <bsd.port.mk>
