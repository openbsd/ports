# $OpenBSD: Makefile,v 1.20 2003/11/15 15:12:53 sturm Exp $

COMMENT=	"MS Word ==> ASCII or TeX, Tk viewer included"

DISTNAME=	catdoc-0.91.4
CATEGORIES=	textproc
MASTER_SITES=	ftp://ftp.ice.ru/pub/vitus/

HOMEPAGE=	http://www.fe.msk.ru/~vitus/catdoc/index.html	

MAINTAINER=	Jason Ish <ish@openbsd.org>

# GPL
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
