# $OpenBSD: Makefile,v 1.32 2013/02/09 14:49:53 sthen Exp $

COMMENT=	MS Word, Excel, Powerpoint ==> ASCII or TeX

DISTNAME=	catdoc-0.94.2
REVISION=	3
CATEGORIES=	textproc
MASTER_SITES=	http://ftp.wagner.pp.ru/pub/catdoc/

HOMEPAGE=	http://wagner.pp.ru/~vitus/software/catdoc/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

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

NO_REGRESS=	Yes

.include <bsd.port.mk>
