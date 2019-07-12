# $OpenBSD: Makefile,v 1.30 2019/07/12 20:50:15 sthen Exp $

COMMENT=	texinfo to HTML converter

DISTNAME=	texi2html-5.0
REVISION=	0
CATEGORIES=	textproc

HOMEPAGE=	http://www.nongnu.org/texi2html/

# GPLv2+
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SAVANNAH:=texi2html/}

USE_GMAKE=	Yes

MAKE_FLAGS=	texinfohtmldir=${PREFIX}/share/doc/texi2html

BUILD_DEPENDS=	devel/p5-libintl \
		devel/gettext,-tools \
		textproc/p5-Text-Unidecode

RUN_DEPENDS=	devel/p5-libintl \
		textproc/p5-Text-Unidecode

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-external-libintl-perl

# https://savannah.nongnu.org/bugs/?43457
post-install:
	rm -r ${PREFIX}/share/texi2html/lib/libintl-perl

.include <bsd.port.mk>
