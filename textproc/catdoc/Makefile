# $OpenBSD: Makefile,v 1.33 2013/03/11 11:42:40 espie Exp $

COMMENT=	MS Word, Excel, Powerpoint ==> ASCII or TeX

DISTNAME=	catdoc-0.94.2
REVISION=	3
CATEGORIES=	textproc
MASTER_SITES=	http://ftp.wagner.pp.ru/pub/catdoc/

HOMEPAGE=	http://wagner.pp.ru/~vitus/software/catdoc/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m

FLAVORS=	tk
FLAVOR?=

.if ${FLAVOR:Mtk}
MODULES=	x11/tk
RUN_DEPENDS=	${MODTK_RUN_DEPENDS}
CONFIGURE_ARGS+=--with-wish=${MODTK_BIN}
.else
CONFIGURE_ARGS+=--disable-wordview
.endif

CONFIGURE_STYLE=gnu dest

NO_TEST=	Yes

.include <bsd.port.mk>
