# $OpenBSD: Makefile,v 1.8 2001/07/17 15:23:35 naddy Exp $

COMMENT=	"portable audio output library"
DISTNAME=	libao-0.7.0
CATEGORIES=    	audio
NEED_VERSION=	1.363
HOMEPAGE=	http://www.vorbis.com

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/files/rc1/unix/

# no shared libraries?
.if (${MACHINE_ARCH} == "hppa") || (${MACHINE_ARCH} == "mvme88k") || \
    (${MACHINE_ARCH} == "vax")

PLUGINS=

.else

FLAVORS=	arts esd sun
FLAVOR?=	sun
PLUGINS=	${FLAVOR}

.if ${FLAVOR:L:Marts}
LIB_DEPENDS+=	artsc.0::x11/kde/libs2
.endif

.if ${FLAVOR:L:Mesd}
LIB_DEPENDS+=	esd.2::audio/esound
.endif

.endif

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static
MAKE_FLAGS=	PLUGINS='${PLUGINS}'
FAKE_FLAGS=	${MAKE_FLAGS} DESTDIR=${WRKINST}

.include <bsd.port.mk>
