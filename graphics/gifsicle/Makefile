# $OpenBSD: Makefile,v 1.17 2001/11/06 08:38:32 jakob Exp $

COMMENT=	"creating & editing GIF images and animations"

DISTNAME=	gifsicle-1.30
CATEGORIES=    	graphics
NEED_VERSION=	1.488

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

HOMEPAGE=	http://www.lcdf.org/gifsicle/

MASTER_SITES=	${HOMEPAGE}/ \
		ftp://ftp.lcdf.org/pub/ \
		ftp://ftp.lcdf.org/pub/OLD-VERSIONS/

FLAVORS=	no_x11
FLAVOR?=

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-gifdiff

SEPARATE_BUILD=		concurrent

.if ${FLAVOR:L:Mno_x11}
USE_X11=	No
CONFIGURE_ARGS+=	--disable-gifview
.else
USE_X11=	Yes
.endif

.include <bsd.port.mk>
