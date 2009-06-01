# $OpenBSD: Makefile,v 1.18 2009/06/01 22:19:23 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	portable Windows library

V=		1_12_0
DISTNAME=	ptlib-v${V}
PKGNAME=	pwlib-${V:S/_/./g}p9
CATEGORIES=	devel

EXTRACT_SUFX=	-src.tar.gz

SHARED_LIBS=	pt	2.0	# 1.12.0

HOMEPAGE=	http://www.h323plus.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# MPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=h323plus/}

WANTLIB=	crypto expat sndio sasl2 ssl

BUILD_DEPENDS=	::devel/bison
LIB_DEPENDS=	lber.>=9,ldap,ldap_r::databases/openldap \
		SDL.>=8::devel/sdl

WRKDIST=	${WRKDIR}/${DISTNAME:S/-/_/}
NO_REGRESS=	Yes

USE_GMAKE=	Yes
ALL_TARGET=	optshared
MAKE_ENV+=	STDCCFLAGS="-I${X11BASE}/include \
			-I${LOCALBASE}/include" \
		CC=${CC} CPLUS=${CXX}
MAKE_FLAGS=	LIB_MAJOR_VERSION=${LIBpt_VERSION:R} \
		LIB_MINOR_VERSION=${LIBpt_VERSION:E}

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=  CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--enable-plugins \
		--enable-v4l2 \
		--enable-bsdvideo \
		--enable-openldap \
		--enable-sasl \
		--enable-sdl \
		--disable-oss \
		--disable-esd \
		--disable-sunaudio \
		--disable-alsa \
		--disable-avc \
		--disable-dc \
		--disable-odbc

post-patch:
	@mkdir ${WRKSRC}/plugins/sound_libsndio
	@cp ${FILESDIR}/{Makefile,sound_libsndio.*} ${WRKSRC}/plugins/sound_libsndio

pre-configure:
	@perl -pi -e 's,!!PREFIX!!,${PREFIX},g' \
		${WRKSRC}/src/ptlib/common/pluginmgr.cxx \
		${WRKSRC}/make/ptlib-config.in \
		${WRKSRC}/make/unix.mak

post-install:
	${INSTALL_DATA} ${WRKSRC}/version.h ${PREFIX}/share/pwlib

.include <bsd.port.mk>
