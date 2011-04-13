# $OpenBSD: Makefile,v 1.1.1.1 2011/04/13 13:26:42 jasper Exp $

COMMENT=	detect character set and encoding of text files

DISTNAME=	enca-1.13
SHARED_LIBS +=  enca                 0.0      # 5.1
CATEGORIES=	converters textproc

HOMEPAGE=	http://gitorious.org/enca

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://dl.cihar.com/enca/

WANTLIB+=		c m recode

MODULES=		devel/gettext

LIB_DEPENDS=		converters/recode

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
LIBTOOL_FLAGS+= 	--tag=disable-static

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
