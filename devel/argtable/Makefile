# $OpenBSD: Makefile,v 1.4 2007/04/12 18:59:35 jasper Exp $

COMMENT=		"ANSI C command line parser"

DISTNAME=		argtable2-6
PKGNAME=		argtable-2.6p1
SHARED_LIBS +=	argtable2            1.1      # .1.1
CATEGORIES=		devel

HOMEPAGE=		http://argtable.sourceforge.net/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=argtable/}

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
FAKE_FLAGS=		exampledir=${PREFIX}/share/examples/argtable2

.include <bsd.port.mk>
