# $OpenBSD: Makefile,v 1.1.1.1 2001/03/14 01:54:08 todd Exp $

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

#FLAVORS=	arts esd
#FLAVOR?=

#PLUGINS=	oss ${FLAVOR}
PLUGINS=	oss

#.if ${FLAVOR:L:Marts}
#LIB_DEPENDS+=	artsc.0::x11/kde/libs2
#.endif
#
#.if ${FLAVOR:L:Mesd}
#LIB_DEPENDS+=	esd.2::audio/esound
#.endif

BUILD_DEPENDS=	automake::devel/automake

CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static \
		--disable-esdtest
MAKE_ENV=	PLUGINS='${PLUGINS}'

post-patch:
	@cd ${WRKSRC} && automake -i || true

.include <bsd.port.mk>
