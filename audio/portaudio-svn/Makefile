COMMENT=		portable cross-platform audio API

DISTNAME =		pa_stable_v190700_20210406
PKGNAME =		portaudio-svn-1970
REVISION =		1
CATEGORIES=		audio
SITES =			http://files.portaudio.com/archives/
EXTRACT_SUFX =		.tgz

SHARED_LIBS =		portaudio	1.2
SHARED_LIBS +=		portaudiocpp	0.0 # 0.12

HOMEPAGE=		http://www.portaudio.com/

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB=		${COMPILER_LIBCXX} m pthread sndio

COMPILER =		base-clang ports-gcc

USE_GMAKE=		Yes
AUTOCONF_VERSION =	2.69
CONFIGURE_STYLE=	autoconf no-autoheader
CONFIGURE_ARGS=		--without-alsa \
			--without-oss \
			--without-jack \
			--enable-cxx

# builds non-automated, interactive tests in ${WRKBUILD}/bin
TEST_TARGET=		tests
TEST_IS_INTERACTIVE=	Yes

CFLAGS+=		-DALLOW_SMP_DANGERS

WRKDIST =		${WRKDIR}/portaudio

post-extract:
	@mkdir -p ${WRKSRC}/src/hostapi/sndio
	@cp ${FILESDIR}/pa_sndio.c ${WRKSRC}/src/hostapi/sndio

.include <bsd.port.mk>
