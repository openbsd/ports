# $OpenBSD: Makefile,v 1.9 2013/03/11 11:42:47 espie Exp $

COMMENT=	lightweight regexp matching library with additional features

DISTNAME=		tre-0.8.0
EXTRACT_SUFX=		.tar.bz2
CATEGORIES=		textproc

HOMEPAGE=		http://laurikari.net/tre/

MASTER_SITES=		${HOMEPAGE}

MAINTAINER=		Matthias Kilian <kili@openbsd.org>

# 2-clause BSD
PERMIT_PACKAGE_CDROM=	Yes

SHARED_LIBS +=	tre                  7.0      # 5.0

WANTLIB=		c

MODULES=		devel/gettext converters/libiconv

USE_LIBTOOL=		Yes
USE_GROFF =		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-static

.include <bsd.port.mk>
