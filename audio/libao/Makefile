# $OpenBSD: Makefile,v 1.2 2001/03/16 11:58:43 naddy Exp $

DISTNAME=	libao-0.6.0
CATEGORIES=    	audio
NEED_VERSION=	1.359
HOMEPAGE=	http://www.vorbis.com

MAINTAINER=	Todd Fries <todd@fries.net>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/files/beta4/unix/

# no shared libraries?
.if (${MACHINE_ARCH} == "alpha") || (${MACHINE_ARCH} == "hppa") || \
    (${MACHINE_ARCH} == "vax")

PLUGINS=

.else

FLAVORS=	arts esd oss
FLAVOR?=	oss
PLUGINS=	${FLAVOR}

.if ${FLAVOR:L:Marts}
LIB_DEPENDS+=	artsc.0::x11/kde/libs2
.endif

.if ${FLAVOR:L:Mesd}
LIB_DEPENDS+=	esd.2::audio/esound
.endif

.endif

BUILD_DEPENDS=	automake::devel/automake

CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static
MAKE_FLAGS=	PLUGINS='${PLUGINS}'
FAKE_FLAGS=	${MAKE_FLAGS} DESTDIR=${WRKINST}

post-patch:
	@cd ${WRKSRC} && automake -i

.include <bsd.port.mk>
