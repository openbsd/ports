# $OpenBSD: Makefile,v 1.19 2004/11/30 01:06:33 espie Exp $

COMMENT=	"ascii art library"

DISTNAME=	aalib-1.2
CATEGORIES=	graphics
MASTER_SITES=	ftp://openbsd.comstyle.com/pub/brad/source/

HOMEPAGE=	http://aa-project.sourceforge.net/aalib/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m ncurses

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

FLAVORS=	no_x11
FLAVOR?=

.if ${FLAVOR:L} == "no_x11"
CONFIGURE_ARGS+= --without-x
.else
USE_X11=	Yes
WANTLIB+=	X11
.endif

post-extract:
	@cd ${WRKSRC}; rm -f {config.cache,config.h,config.log,config.status}
	@cp -f ${FILESDIR}/config.cache ${WRKSRC}

.include <bsd.port.mk>
