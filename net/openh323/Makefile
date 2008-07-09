# $OpenBSD: Makefile,v 1.18 2008/07/09 02:13:59 jakemsr Exp $

SHARED_ONLY=	Yes

COMMENT=	H.323 video conferencing library

V=		1_19_0_1
DISTNAME=	openh323-v${V}
PKGNAME=	openh323-${V:S/_/./g}p1
CATEGORIES=	net devel

EXTRACT_SUFX=	-src-tar.gz

SHARED_LIBS=	h323	2.0    # 1.19

HOMEPAGE=	http://openh323.sourceforge.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# MPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=openh323/}

WANTLIB=	SDL crypto expat lber ldap ldap_r ossaudio sasl2 ssl

LIB_DEPENDS=	pt.>=2::devel/pwlib \
		speex.>=4::audio/speex \
		avutil.>=2::graphics/ffmpeg

WRKDIST=	${WRKDIR}/${DISTNAME:S/-/_/}
SUBST_VARS=	LOCALBASE

USE_GMAKE=	Yes
ALL_TARGET=	optshared
NO_REGRESS=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -pthread -lavutil"
CONFIGURE_ARGS=	--enable-h263avcodec \
		--disable-localspeex \
		--disable-vich263

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "sparc64" || ${MACHINE_ARCH} == "alpha"
CFLAGS+=	-fPIC
.endif

MAKE_ENV+=	STDCCFLAGS="${STDCCFLAGS} -I${WRKSRC}/include" \
		CC=${CC} CPLUS=${CXX} BUILDSELF="1"
MAKE_FLAGS=	LIB_MAJOR_VERSION=${LIBh323_VERSION:R} \
		LIB_MINOR_VERSION=${LIBh323_VERSION:E}

CFLAGS +=	-I${LOCALBASE}/include/libavcodec

do-extract:
	@tar xzf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX} -C ${WRKDIR}

pre-configure:
	@perl -pi -e 's,!!LOCALBASE!!,${LOCALBASE},g' \
		${WRKSRC}/plugins/audio/Speex/Makefile.in
	@perl -pi -e 's,!!PREFIX!!,${PREFIX},g;' \
		-e 's,!!SOSUFX!!,so.${LIBh323_VERSION},g' \
		${WRKSRC}/openh323u.mak.in

post-install:
	${INSTALL_DATA} ${WRKSRC}/version.h ${PREFIX}/share/openh323

.include <bsd.port.mk>
