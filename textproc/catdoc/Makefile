# $OpenBSD: Makefile,v 1.21 2004/03/02 20:56:09 ish Exp $

COMMENT=	"MS Word ==> ASCII or TeX, Tk viewer included"

DISTNAME=	catdoc-0.91.4
CATEGORIES=	textproc
MASTER_SITES=	ftp://ftp.45.free.net/pub/catdoc/

HOMEPAGE=	http://www.45.free.net/~vitus/ice/catdoc/

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
