# $OpenBSD: Makefile,v 1.13 2012/09/21 13:17:45 jasper Exp $

COMMENT=		high performance full-text search system

DISTNAME=		hyperestraier-1.4.13
REVISION=		5
CATEGORIES=		textproc
SHARED_LIBS=		estraier	8.38

HOMEPAGE=		http://fallabs.com/hyperestraier/index.html

MAINTAINER=		Jeremy Evans <jeremy@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=hyperestraier/}

WANTLIB=		c m pthread z qdbm>=14.11
MODULES=		converters/libiconv

LIB_DEPENDS=		databases/qdbm

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}
USE_GROFF =		Yes

.include <bsd.port.mk>
