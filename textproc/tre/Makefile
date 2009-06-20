# $OpenBSD: Makefile,v 1.3 2009/06/20 20:06:55 kili Exp $

COMMENT=	lightweight regexp matching library with additional features

DISTNAME=		tre-0.7.6
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

SHARED_LIBS+=		tre		6.4	# .6.4

WANTLIB=		c

MODULES=		devel/gettext converters/libiconv

LIB_DEPENDS=		utf8.>=1::misc/libutf8

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-static --with-libutf8=${LOCALBASE}

.include <bsd.port.mk>
