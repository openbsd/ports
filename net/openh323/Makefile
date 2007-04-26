# $OpenBSD: Makefile,v 1.10 2007/04/26 14:10:30 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	"H.323 video conferencing library"

DISTNAME=	openh323-v1_18_0
PKGNAME=	openh323-1.18.0
CATEGORIES=	net devel

EXTRACT_SUFX=	-src-tar.gz

SHARED_LIBS=	h323	1.18    # 1.18

HOMEPAGE=	http://www.voxgratia.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# MPL - LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/releases/

WANTLIB=	crypto expat ossaudio pthread ssl

LIB_DEPENDS=	pt.>=1::devel/pwlib \
		speex.>=4::audio/speex \
		avutil.>=2::graphics/ffmpeg

WRKDIST=	${WRKDIR}/${DISTNAME:S/-/_/}
SUBST_VARS=	LOCALBASE

USE_GMAKE=	Yes
ALL_TARGET=	optshared
NO_REGRESS=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/ffmpeg" \
		LDFLAGS="-L${LOCALBASE}/lib -pthread -lavutil"
CONFIGURE_ARGS=	--enable-h263avcodec \
		--disable-localspeex

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "sparc64"
CFLAGS+=	-fPIC
.endif

MAKE_ENV+=	STDCCFLAGS="${STDCCFLAGS} -I${WRKSRC}/include" \
		CC=${CC} CPLUS=${CXX} BUILDSELF="1"

do-extract:
	@tar xzf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX} -C ${WRKDIR}

pre-configure:
	@perl -pi -e 's,MAJOR_VERSION.*,MAJOR_VERSION ${LIBh323_VERSION:R},g;' \
		-e 's,MINOR_VERSION.*,MINOR_VERSION ${LIBh323_VERSION:E},g' \
		${WRKSRC}/version.h
	@perl -pi -e 's,!!LOCALBASE!!,${LOCALBASE},g' \
		${WRKSRC}/plugins/audio/Speex/Makefile.in
	@perl -pi -e 's,!!PREFIX!!,${PREFIX},g;' \
		-e 's,!!SOSUFX!!,so.${LIBh323_VERSION},g' \
		${WRKSRC}/openh323u.mak.in

.include <bsd.port.mk>
