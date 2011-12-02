# $OpenBSD: Makefile,v 1.38 2011/12/02 14:36:14 espie Exp $

COMMENT=	ascii art library

DISTNAME=	aalib-1.4rc5
PKGNAME=	aalib-1.4
REVISION =	3
SHARED_LIBS=	aa	2.0
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=aa-project/}

HOMEPAGE=	http://aa-project.sourceforge.net/aalib/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m ncurses

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}

WRKDIST=	${WRKDIR}/aalib-1.4.0

USE_GROFF =	Yes
NO_REGRESS=	Yes

FLAVORS=	no_x11
FLAVOR?=

.if ${FLAVOR} == "no_x11"
CONFIGURE_ARGS+= --without-x
.else
WANTLIB+=	X11 xcb
.endif

.include <bsd.port.mk>
