# $OpenBSD: Makefile,v 1.18 2002/07/20 00:52:44 naddy Exp $

COMMENT=	"portable audio output library"
COMMENT-arts=	"aRts module for portable audio output library"
COMMENT-esd=	"ESounD module for portable audio output library"

FULLPKGNAME=		libao-${VERSION}
FULLPKGNAME-arts=	libao-arts-${VERSION}
FULLPKGNAME-esd=	libao-esd-${VERSION}

VERSION=	0.8.3
DISTNAME=	libao-${VERSION}
CATEGORIES=    	audio
HOMEPAGE=	http://www.vorbis.com/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.wiles.org/pub/mirrors/Vorbis/unix/ \
		http://xiph.stratius.com/vorbis/unix/ \
		http://www.oddsock.org/vorbis/unix/ \
		http://www.casterclub.com/vorbis/unix/ \
		http://www.math.utoledo.edu/~chaese/Vorbis/unix/

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
.if ${FLAVOR:L:Mno_arts}
CONFIGURE_ARGS+= --disable-arts
.endif
.if ${FLAVOR:L:Mno_esd}
CONFIGURE_ARGS+= --disable-esd
.endif

.if defined(PACKAGING)
.  if   ${SUBPACKAGE} == "-arts"
LIB_DEPENDS=	ao.3::audio/libao \
		artsc.0::x11/kde/arts3
.  elif ${SUBPACKAGE} == "-esd"
LIB_DEPENDS=	ao.3::audio/libao \
		esd.2::audio/esound
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
