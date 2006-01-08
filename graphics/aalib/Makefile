# $OpenBSD: Makefile,v 1.24 2006/01/08 01:01:17 steven Exp $

COMMENT=	"ascii art library"

DISTNAME=	aalib-1.2
PKGNAME=	${DISTNAME}p0
SHARED_LIBS=	aa	1.3
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_OPENBSD}

HOMEPAGE=	http://aa-project.sourceforge.net/aalib/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m ncurses

USE_LIBTOOL=	Yes
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
