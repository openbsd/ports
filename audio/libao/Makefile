# $OpenBSD: Makefile,v 1.44 2009/01/21 15:14:27 naddy Exp $

COMMENT=	portable audio output library

DISTNAME=	libao-0.8.8
PKGNAME=	${DISTNAME}p3
CATEGORIES=    	audio
HOMEPAGE=	http://www.xiph.org/ao/
SHARED_LIBS +=	ao                   3.3      # .3.3

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://downloads.xiph.org/releases/ao/

WANTLIB=	sndio

USE_LIBTOOL=	Yes
SEPARATE_BUILD=	simple
AUTOCONF_VERSION = 2.61
AUTOMAKE_VERSION = 1.9
CONFIGURE_STYLE= no-autoheader automake autoconf

CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static \
		--disable-arts \
		--disable-esd \
		--disable-nas \
		--disable-pulse
# disable sun audio detection
CONFIGURE_ENV=	ac_cv_header_sys_audioio_h=no

post-patch:
	mkdir ${WRKSRC}/src/plugins/sndio
	cp ${FILESDIR}/Makefile.am ${FILESDIR}/ao_sndio.c \
	    ${WRKSRC}/src/plugins/sndio
	cd ${WRKSRC}; AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    AUTOMAKE_VERSION=${AUTOMAKE_VERSION} aclocal

pre-configure:
	cd ${WRKSRC}; AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    AUTOMAKE_VERSION=${AUTOMAKE_VERSION} automake \
	    --foreign --add-missing --copy

pre-build:
	@perl -i -pe 's:/etc/libao.conf:${SYSCONFDIR}/libao.conf:g' \
	    ${WRKDIST}/src/ao_private.h \
	    ${WRKDIST}/libao.conf.5 \
	    ${WRKDIST}/doc/config.html

.include <bsd.port.mk>
