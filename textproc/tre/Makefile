# $OpenBSD: Makefile,v 1.15 2017/11/19 00:53:16 naddy Exp $

COMMENT=	lightweight regexp matching library with additional features

DISTNAME=		tre-0.8.0
EXTRACT_SUFX=		.tar.bz2
CATEGORIES=		textproc
REVISION=		3

HOMEPAGE=		http://laurikari.net/tre/

MASTER_SITES=		${HOMEPAGE}

MAINTAINER=		Matthias Kilian <kili@openbsd.org>

# 2-clause BSD
PERMIT_PACKAGE_CDROM=	Yes

SHARED_LIBS +=	tre                  7.0      # 5.0

WANTLIB=		c iconv intl

LIB_DEPENDS=		devel/gettext

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-static

.include <bsd.port.mk>
