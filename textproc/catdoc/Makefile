# $OpenBSD: Makefile,v 1.35 2016/12/25 15:23:21 zhuk Exp $

COMMENT-main=	convert MS Word, Excel, Powerpoint to ASCII or TeX
COMMENT-tk=	viewer for MS Word files

V=		0.94.2
DISTNAME=	catdoc-$V
PKGNAME-main=	catdoc-$V
PKGNAME-tk=	wordview-$V
PKG_ARCH-tk=	*
REVISION=	5
CATEGORIES=	textproc
MASTER_SITES=	http://ftp.wagner.pp.ru/pub/catdoc/

HOMEPAGE=	http://wagner.pp.ru/~vitus/software/catdoc/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MULTI_PACKAGES=	-main
PSEUDO_FLAVORS=	no_x11
FLAVOR?=

WANTLIB-main=	c m

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS+=--disable-wordview
.else
MODULES=	x11/tk
MULTI_PACKAGES+=-tk
CONFIGURE_ARGS+=--with-wish=${MODTK_BIN}
.endif

RUN_DEPENDS-tk=	textproc/catdoc,-main \
		${MODTK_RUN_DEPENDS}

CONFIGURE_STYLE=gnu dest

NO_TEST=	Yes

.include <bsd.port.mk>
