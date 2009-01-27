# $OpenBSD: Makefile,v 1.5 2009/01/27 17:17:09 ajacoutot Exp $

COMMENT=		high performance full-text search system

DISTNAME=		hyperestraier-1.4.13
PKGNAME=		${DISTNAME}p0
CATEGORIES=		textproc
SHARED_LIBS=		estraier	8.38

HOMEPAGE=		http://hyperestraier.sourceforge.net/

MAINTAINER=		Jeremy Evans <openbsd@jeremyevans.net>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=hyperestraier/}

WANTLIB=		c m pthread z
MODULES=		converters/libiconv

LIB_DEPENDS=		qdbm.>=14.11::databases/qdbm

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}

.include <bsd.port.mk>
