# $OpenBSD: Makefile,v 1.7 2010/03/20 16:45:10 jasper Exp $

COMMENT=		ANSI C command line parser

DISTNAME=		argtable2-12
PKGNAME=		argtable-2.12
SHARED_LIBS +=	argtable2            1.2      # .1.7
CATEGORIES=		devel

HOMEPAGE=		http://argtable.sourceforge.net/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=argtable/}

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
FAKE_FLAGS=		exampledir=${PREFIX}/share/examples/argtable2

.include <bsd.port.mk>
