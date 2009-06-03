# $OpenBSD: Makefile,v 1.6 2009/06/03 22:54:26 jasper Exp $

COMMENT=		ANSI C command line parser

DISTNAME=		argtable2-11
PKGNAME=		argtable-2.11
SHARED_LIBS +=	argtable2            1.1      # .1.6
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
