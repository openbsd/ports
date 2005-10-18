# $OpenBSD: Makefile,v 1.28 2005/10/18 23:24:25 naddy Exp $

COMMENT=	"portable audio output library"
COMMENT-arts=	"aRts module for portable audio output library"
COMMENT-esd=	"ESounD module for portable audio output library"

VERSION=	0.8.5
DISTNAME=	libao-${VERSION}
FULLPKGNAME=	libao-${VERSION}p2
PKGNAME-arts=	libao-arts-${VERSION}p1
PKGNAME-esd=	libao-esd-${VERSION}p1
CATEGORIES=    	audio
HOMEPAGE=	http://www.xiph.org/ao/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		pthread

MASTER_SITES=	${HOMEPAGE}src/

PSEUDO_FLAVORS=	no_arts no_esd
FLAVOR?=	no_arts

MULTI_PACKAGES=
.if !${FLAVOR:L:Mno_arts}
MULTI_PACKAGES+= -arts
.endif
.if !${FLAVOR:L:Mno_esd}
MULTI_PACKAGES+= -esd
.endif

SUBPACKAGE?=

USE_LIBTOOL=	Yes
SEPARATE_BUILD=	simple
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static
.if ${FLAVOR:L:Mno_arts}
CONFIGURE_ARGS+= --disable-arts
.endif
.if ${FLAVOR:L:Mno_esd}
CONFIGURE_ARGS+= --disable-esd
.endif
CONFIGURE_ARGS+= --disable-nas

.if defined(PACKAGING)
.  if   ${SUBPACKAGE} == "-arts"
LIB_DEPENDS=	ao.3::audio/libao \
		artsc.0::x11/kde/arts3
WANTLIB+=	glib-2.0.0.0 gmodule-2.0.0.0 gthread-2.0.0.0 \
		iconv intl
.  elif ${SUBPACKAGE} == "-esd"
LIB_DEPENDS=	ao.3::audio/libao \
		esd.2::audio/esound
WANTLIB+=	audiofile m
.  endif
.else
.  if ${MULTI_PACKAGES:M-arts}
LIB_DEPENDS+=	artsc.0::x11/kde/arts3
.  endif
.  if ${MULTI_PACKAGES:M-esd}
LIB_DEPENDS+=	esd.2::audio/esound
.  endif
.endif

.include <bsd.port.mk>
