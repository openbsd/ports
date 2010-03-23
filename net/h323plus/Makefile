# $OpenBSD: Makefile,v 1.1.1.1 2010/03/23 21:11:57 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	H.323 video conferencing library

V=		1_21_0
DISTNAME=	h323plus-v${V}
PKGNAME=	h323plus-${V:S/_/./g}
CATEGORIES=	net devel

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} plugins-v${V}${EXTRACT_SUFX}

SHARED_LIBS=	h323	3.0    # 1.21.0

HOMEPAGE=	http://www.h323plus.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# MPL (dlopen(3) GPL modules)
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/source/download/

WANTLIB += SDL c crypto expat lber ldap ldap_r m sasl2
WANTLIB += ssl

LIB_DEPENDS=	pt.>=3::devel/ptlib \
		avutil.>=6::graphics/ffmpeg \
		speex.>=4::audio/speex \
		gsm.>=1::audio/gsm

WRKDIST=	${WRKDIR}/h323plus

USE_GMAKE=	Yes
ALL_TARGET=	opt
NO_REGRESS=	Yes

MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC} ${WRKSRC}/plugins

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -pthread -lavutil" \
		PTLIBDIR="`ptlib-config --prefix`/share/ptlib"
CONFIGURE_ARGS=	--disable-localspeex \
		--disable-localgsm \
		--enable-gnugk

MAKE_ENV=	STDCCFLAGS="${STDCCFLAGS} -I${WRKSRC}/include" \
		CC=${CC} CPLUS=${CXX} BUILDSELF="1"

MAKE_FLAGS=	MAJOR_VERSION=${LIBh323_VERSION:R} \
		MINOR_VERSION=${LIBh323_VERSION:E}

post-extract:
	@mv ${WRKDIR}/plugins ${WRKSRC}/plugins

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile.in \
		${WRKSRC}/plugins/audio/Speex/Makefile.in \
		${WRKSRC}/openh323u.mak.in \
		${WRKSRC}/plugins/video/H.263-ffmpeg/h263ffmpeg.cxx
	find ${WRKSRC}/plugins/ -type f -name Makefile.in -exec  \
		perl -pi -e 's,pwlib,ptlib,g' {} \;

post-install:
	@cd ${WRKBUILD}/plugins && \
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${ALL_FAKE_FLAGS} ${INSTALL_TARGET}
	${INSTALL_DATA} ${WRKSRC}/version.h ${PREFIX}/share/openh323

.include <bsd.port.mk>
