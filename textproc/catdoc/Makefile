# $OpenBSD: Makefile,v 1.28 2011/03/08 21:07:22 landry Exp $

COMMENT=	MS Word, Excel, Powerpoint ==> ASCII or TeX

DISTNAME=	catdoc-0.94.2
REVISION=	0
CATEGORIES=	textproc
MASTER_SITES=	http://ftp.wagner.pp.ru/pub/catdoc/

HOMEPAGE=	http://wagner.pp.ru/~vitus/software/catdoc/

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
RUN_DEPENDS=	x11/tk/8.4
.else
CONFIGURE_ARGS+=--disable-wordview
.endif

CONFIGURE_STYLE=gnu dest
USE_GROFF =	Yes

NO_REGRESS=	Yes

.include <bsd.port.mk>
