# $OpenBSD: Makefile,v 1.3 2006/10/28 11:19:20 espie Exp $

COMMENT=		"ANSI C command line parser"

DISTNAME=		argtable2-6
PKGNAME=		argtable-2.6p0
SHARED_LIBS +=	argtable2            1.1      # .1.1
CATEGORIES=		devel

HOMEPAGE=		http://argtable.sourceforge.net/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

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
