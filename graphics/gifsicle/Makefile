# $OpenBSD: Makefile,v 1.34 2011/12/02 14:36:14 espie Exp $

COMMENT=	creating & editing GIF images and animations

DISTNAME=	gifsicle-1.60
CATEGORIES=    	graphics

MAINTAINER=	Eric Faurot <eric@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

HOMEPAGE=	http://www.lcdf.org/gifsicle/

MASTER_SITES=	${HOMEPAGE}/ \
		ftp://ftp.lcdf.org/pub/ \
		ftp://ftp.lcdf.org/pub/OLD-VERSIONS/

FLAVORS=	no_x11
FLAVOR?=

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-gifdiff

SEPARATE_BUILD=		concurrent
USE_GROFF =	Yes

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS+=	--disable-gifview
.else
WANTLIB+=	ICE SM X11
.endif

.include <bsd.port.mk>
