# $OpenBSD: Makefile,v 1.30 2012/08/26 17:41:16 stu Exp $

COMMENT=	MS Word, Excel, Powerpoint ==> ASCII or TeX

DISTNAME=	catdoc-0.94.2
REVISION=	2
CATEGORIES=	textproc
MASTER_SITES=	http://ftp.wagner.pp.ru/pub/catdoc/

HOMEPAGE=	http://wagner.pp.ru/~vitus/software/catdoc/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m 

FLAVORS=	tk
FLAVOR?=

.if ${FLAVOR:L:Mtk}
MODULES=	x11/tk
MODTK_VERSION=	8.4
RUN_DEPENDS=	${MODTK_RUN_DEPENDS}
.else
CONFIGURE_ARGS+=--disable-wordview
.endif

CONFIGURE_STYLE=gnu dest
USE_GROFF =	Yes

NO_REGRESS=	Yes

.include <bsd.port.mk>
