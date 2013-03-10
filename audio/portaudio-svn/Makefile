# $OpenBSD: Makefile,v 1.13 2013/03/10 22:55:05 espie Exp $

COMMENT=		portable cross-platform audio API

DISTNAME=		portaudio-svn-1406
REVISION=		4
CATEGORIES=		audio

SHARED_LIBS=		portaudio	1.0

HOMEPAGE=		http://www.portaudio.com/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m pthread sndio

MASTER_SITES=		http://jakemsr.trancell.org/distfiles/

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
AUTOCONF_VERSION=	2.61
CONFIGURE_STYLE=	autoconf no-autoheader
CONFIGURE_ARGS=		--without-alsa --without-oss --without-jack

# builds non-automated, interactive tests in ${WRKBUILD}/bin
TEST_TARGET=		tests
TEST_IS_INTERACTIVE=	Yes

CFLAGS+=		-DALLOW_SMP_DANGERS

post-extract:
	@mkdir -p ${WRKSRC}/src/hostapi/sndio
	@cp ${FILESDIR}/pa_sndio.c ${WRKSRC}/src/hostapi/sndio

.include <bsd.port.mk>
