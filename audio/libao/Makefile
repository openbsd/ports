# $OpenBSD: Makefile,v 1.11 2001/07/26 12:31:32 espie Exp $

COMMENT=	"portable audio output library"
COMMENT-arts=	"aRts module for portable audio output library"
COMMENT-esd=	"ESounD module for portable audio output library"

VERSION=	0.7.0
DISTNAME=	libao-${VERSION}
FULLPKGNAME=		libao-${VERSION}
FULLPKGNAME-arts=	libao-arts-${VERSION}
FULLPKGNAME-esd=	libao-esd-${VERSION}
CATEGORIES=    	audio
NEED_VERSION=	1.422
HOMEPAGE=	http://www.vorbis.com/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}files/rc1/unix/

FLAVORS=	no_arts no_esd
FLAVOR?=	no_arts

MULTI_PACKAGES=
.if !${FLAVOR:L:Mno_arts}
MULTI_PACKAGES+= -arts
.endif
.if !${FLAVOR:L:Mno_esd}
MULTI_PACKAGES+= -esd
.endif

SUBPACKAGE?=

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static

.if defined(PACKAGING)
.  if   ${SUBPACKAGE} == "-arts"
LIB_DEPENDS=	ao.1::audio/libao \
		artsc.0::x11/kde/libs2
.  elif ${SUBPACKAGE} == "-esd"
LIB_DEPENDS=	ao.1::audio/libao \
		esd.2::audio/esound
.  endif
.else
.  if ${MULTI_PACKAGES:M-arts}
LIB_DEPENDS+=	artsc.0::x11/kde/libs2
.  endif
.  if ${MULTI_PACKAGES:M-esd}
LIB_DEPENDS+=	esd.2::audio/esound
.  endif
.endif

.include <bsd.port.mk>
