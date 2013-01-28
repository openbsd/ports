# $OpenBSD: Makefile,v 1.8 2013/01/28 21:08:04 sthen Exp $

COMMENT=	lightweight regexp matching library with additional features

DISTNAME=		tre-0.8.0
EXTRACT_SUFX=		.tar.bz2
CATEGORIES=		textproc

HOMEPAGE=		http://laurikari.net/tre/

MASTER_SITES=		${HOMEPAGE}

MAINTAINER=		Matthias Kilian <kili@openbsd.org>

# 2-clause BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SHARED_LIBS +=	tre                  7.0      # 5.0

WANTLIB=		c

MODULES=		devel/gettext converters/libiconv

USE_LIBTOOL=		Yes
USE_GROFF =		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-static

.include <bsd.port.mk>
