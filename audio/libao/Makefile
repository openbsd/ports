# $OpenBSD: Makefile,v 1.58 2019/07/12 20:43:34 sthen Exp $

COMMENT=	portable audio output library

DISTNAME=	libao-1.2.0
CATEGORIES=    	audio
HOMEPAGE=	https://www.xiph.org/ao/
SHARED_LIBS=	ao                   5.0      # 5.0
REVISION=	1

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://downloads.xiph.org/releases/ao/

WANTLIB=	sndio

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ARGS=	--enable-static \
		--disable-arts \
		--disable-esd \
		--disable-nas \
		--disable-pulse
# disable sun audio detection
CONFIGURE_ENV=	ac_cv_header_sys_audioio_h=no

# do not install
MAKE_FLAGS=	ckport_DATA=""

pre-build:
	@sed -i 's:/etc/libao.conf:${SYSCONFDIR}/libao.conf:g' \
	    ${WRKDIST}/include/ao/ao_private.h \
	    ${WRKDIST}/libao.conf.5 \
	    ${WRKDIST}/doc/config.html

.include <bsd.port.mk>
