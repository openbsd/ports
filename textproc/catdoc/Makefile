# $OpenBSD: Makefile,v 1.18 2002/11/27 07:50:28 ish Exp $

COMMENT=	"MS Word ==> ASCII or TeX, Tk viewer included"

DISTNAME=	catdoc-0.91.4
CATEGORIES=	textproc
NEED_VERSION=	1.496
MASTER_SITES=	ftp://ftp.ice.ru/pub/vitus/

HOMEPAGE=	http://www.fe.msk.ru/~vitus/catdoc/index.html	

MAINTAINER=	Jason Ish <ish@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=	tk
FLAVOR?=

.if ${FLAVOR:L:Mtk}
RUN_DEPENDS=	::x11/tk/8.0
.else
CONFIGURE_ARGS+=--disable-wordview
.endif

CONFIGURE_STYLE=gnu dest

NO_REGRESS=	Yes

.include <bsd.port.mk>
