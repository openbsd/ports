# $OpenBSD: Makefile,v 1.9 2001/07/22 00:12:55 naddy Exp $

COMMENT=	"portable audio output library"
COMMENT-arts=	"aRts module for portable audio output library"
COMMENT-esd=	"ESounD module for portable audio output library"

VERSION=	0.7.0
DISTNAME=	libao-${VERSION}
PKGNAME-arts=	libao-arts-${VERSION}
PKGNAME-esd=	libao-esd-${VERSION}
CATEGORIES=    	audio
NEED_VERSION=	1.422
HOMEPAGE=	http://www.vorbis.com

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/files/rc1/unix/

MULTI_PACKAGES=	-arts -esd
SUBPACKAGE?=

.if !defined(PACKAGING)
LIB_DEPENDS=	artsc.0::x11/kde/libs2 \
		esd.2::audio/esound
.endif

.if   defined(PACKAGING) && ${SUBPACKAGE} == "-arts"
LIB_DEPENDS=	ao.1::audio/libao \
		artsc.0::x11/kde/libs2
.elif defined(PACKAGING) && ${SUBPACKAGE} == "-esd"
LIB_DEPENDS=	ao.1::audio/libao \
		esd.2::audio/esound
.endif

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static

.include <bsd.port.mk>
