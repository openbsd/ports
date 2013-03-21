# $OpenBSD: Makefile,v 1.16 2013/03/21 08:45:13 ajacoutot Exp $

COMMENT=		portable cross-platform audio API

DISTNAME=		portaudio-svn-1851
CATEGORIES=		audio
MASTER_SITES=		http://comstyle.com/source/
EXTRACT_SUFX=		.tar.xz
REVISION=		0

SHARED_LIBS=		portaudio	1.0

HOMEPAGE=		http://www.portaudio.com/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		m pthread sndio

USE_GMAKE=		Yes
AUTOCONF_VERSION=	2.68
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
