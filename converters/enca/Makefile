# $OpenBSD: Makefile,v 1.4 2013/03/11 01:30:27 espie Exp $

COMMENT=	detect character set and encoding of text files

DISTNAME=	enca-1.14
SHARED_LIBS +=  enca                 0.0      # 5.1
CATEGORIES=	converters textproc

HOMEPAGE=	http://gitorious.org/enca/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://dl.cihar.com/enca/

WANTLIB += c m recode

MODULES=		devel/gettext

LIB_DEPENDS=		converters/recode

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
