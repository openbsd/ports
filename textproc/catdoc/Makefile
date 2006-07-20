# $OpenBSD: Makefile,v 1.23 2006/07/20 04:43:28 steven Exp $

COMMENT=	"MS Word ==> ASCII or TeX, Tk viewer included"

DISTNAME=	catdoc-0.91.4
PKGNAME=	${DISTNAME}p0
CATEGORIES=	textproc
MASTER_SITES=	ftp://ftp.45.free.net/pub/catdoc/

HOMEPAGE=	http://www.45.free.net/~vitus/software/catdoc/

MAINTAINER=	Jason Ish <ish@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m 

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
