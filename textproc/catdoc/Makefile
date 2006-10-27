# $OpenBSD: Makefile,v 1.24 2006/10/27 20:41:47 steven Exp $

COMMENT=	"MS Word, Excel, Powerpoint ==> ASCII or TeX"

DISTNAME=	catdoc-0.94.2
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
RUN_DEPENDS=	::x11/tk/8.4
.else
CONFIGURE_ARGS+=--disable-wordview
.endif

CONFIGURE_STYLE=gnu dest

NO_REGRESS=	Yes

.include <bsd.port.mk>
