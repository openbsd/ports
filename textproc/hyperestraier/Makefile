# $OpenBSD: Makefile,v 1.17 2016/03/11 19:59:17 naddy Exp $

COMMENT=		high performance full-text search system

DISTNAME=		hyperestraier-1.4.13
REVISION=		6
CATEGORIES=		textproc
SHARED_LIBS=		estraier	8.38

HOMEPAGE=		http://fallabs.com/hyperestraier/index.html

MAINTAINER=		Jeremy Evans <jeremy@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=hyperestraier/}

WANTLIB=		c m pthread z qdbm>=14.11
MODULES=		converters/libiconv

LIB_DEPENDS=		databases/qdbm

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
