# $OpenBSD: Makefile,v 1.50 2013/03/10 22:55:03 espie Exp $

COMMENT=	portable audio output library

DISTNAME=	libao-1.1.0
CATEGORIES=    	audio
HOMEPAGE=	http://www.xiph.org/ao/
SHARED_LIBS=	ao                   5.0      # .4.0

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://downloads.xiph.org/releases/ao/

WANTLIB=	sndio

USE_LIBTOOL=	Yes
SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static \
		--disable-arts \
		--disable-esd \
		--disable-nas \
		--disable-pulse
# disable sun audio detection
CONFIGURE_ENV=	ac_cv_header_sys_audioio_h=no

pre-build:
	@perl -i -pe 's:/etc/libao.conf:${SYSCONFDIR}/libao.conf:g' \
	    ${WRKDIST}/include/ao/ao_private.h \
	    ${WRKDIST}/libao.conf.5 \
	    ${WRKDIST}/doc/config.html

.include <bsd.port.mk>
