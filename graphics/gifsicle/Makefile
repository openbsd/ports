# $OpenBSD: Makefile,v 1.16 2001/11/06 08:32:19 shell Exp $

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
USE_X11=	Yes
CONFIGURE_ARGS+=	--disable-gifview
.endif

.include <bsd.port.mk>
