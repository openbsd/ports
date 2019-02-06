# $OpenBSD: Makefile,v 1.19 2019/02/06 14:21:15 jca Exp $

COMMENT=		portable cross-platform audio API

DISTNAME =		pa_stable_v190600_20161030
PKGNAME =		portaudio-svn-1960
CATEGORIES=		audio
MASTER_SITES =		http://www.portaudio.com/archives/
EXTRACT_SUFX =		.tgz

SHARED_LIBS =		portaudio	1.2

HOMEPAGE=		http://www.portaudio.com/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		m pthread sndio

USE_GMAKE=		Yes
AUTOCONF_VERSION =	2.69
CONFIGURE_STYLE=	autoconf no-autoheader
CONFIGURE_ARGS=		--without-alsa --without-oss --without-jack

# builds non-automated, interactive tests in ${WRKBUILD}/bin
TEST_TARGET=		tests
TEST_IS_INTERACTIVE=	Yes

CFLAGS+=		-DALLOW_SMP_DANGERS

WRKDIST =		${WRKDIR}/portaudio

post-extract:
	@mkdir -p ${WRKSRC}/src/hostapi/sndio
	@cp ${FILESDIR}/pa_sndio.c ${WRKSRC}/src/hostapi/sndio

.include <bsd.port.mk>
