# $OpenBSD: Makefile,v 1.12 2011/03/28 15:09:26 sthen Exp $

COMMENT=		high performance full-text search system

DISTNAME=		hyperestraier-1.4.13
REVISION=		4
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
