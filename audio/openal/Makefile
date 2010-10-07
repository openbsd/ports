# $OpenBSD: Makefile,v 1.16 2010/10/07 04:34:59 jakemsr Exp $

COMMENT=	cross-platform 3D audio API

DISTNAME=	openal-0.0.8
REVISION=	7
CATEGORIES=	audio
SHARED_LIBS +=  openal               1.0      # .0.0

HOMEPAGE=	http://www.openal.org/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		m sndio

MASTER_SITES=	http://openbsd.dead-parrot.de/distfiles/

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

AUTOCONF_VERSION=2.59
AUTOMAKE_VERSION=1.9
CONFIGURE_STYLE=autoconf automake
CONFIGURE_ARGS=	--disable-vorbis \
		--disable-arts \
		--disable-mp3 \
		--disable-esd \
		--disable-sdl \
		--disable-solaris

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/admin/autotools

post-extract:
	@cp ${FILESDIR}/alc_backend_sndio.c ${WRKSRC}/src/backends/

AUTO_ENV=	AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION}

post-patch:
	@echo "Running aclocal-${AUTOMAKE_VERSION} in ${WRKSRC}"
	@cd ${WRKSRC}; ${AUTO_ENV} aclocal -I admin/autotools/m4

pre-configure:
	@echo "Running automake-${AUTOMAKE_VERSION} in ${WRKSRC}"
	@cd ${WRKSRC}; ${AUTO_ENV} automake --foreign

.include <bsd.port.mk>
