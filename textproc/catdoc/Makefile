# $OpenBSD: Makefile,v 1.14 2001/05/29 23:22:44 jasoni Exp $

COMMENT=	"MS Word ==> ASCII or TeX, Tk viewer included"

DISTNAME=	catdoc-0.90.3
CATEGORIES=	textproc
NEED_VERSION=	1.402
MASTER_SITES=	ftp://ftp.ice.ru/pub/vitus/

HOMEPAGE=	http://www.fe.msk.ru/~vitus/catdoc/index.html	

MAINTAINER=	Jason Ish <jasoni@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=   wish8.0::x11/tk/8.0

CONFIGURE_STYLE=gnu dest

.include <bsd.port.mk>
