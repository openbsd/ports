# $OpenBSD: Makefile,v 1.7 2011/04/17 10:07:56 sthen Exp $

COMMENT=	lightweight regexp matching library with additional features

DISTNAME=		tre-0.7.6
REVISION=		1
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

USE_LIBTOOL=		Yes
USE_GROFF =		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-static

.include <bsd.port.mk>
