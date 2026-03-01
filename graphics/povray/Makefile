COMMENT=	3D image rendering package

V=		3.7.0.10
DISTNAME=	povunix-v$V-src
PKGNAME=	povray-$V

CATEGORIES=	graphics

HOMEPAGE=	https://www.povray.org/
# created by extracting github tarball, then:
# cd unix, AUTOCONF_VERSION=2.72 AUTOMAKE_VERSION=1.16 ./prebuild.sh
# this is the same format as upstream's files for 3.8 beta releases
SITES=		https://spacehopper.org/mirrors/
PORTROACH=	site:https://github.com/POV-Ray/povray/releases/
#SITES=		https://github.com/POV-Ray/povray/releases/download/v${V}/

# AGPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} Iex-3_4 IlmThread-3_4 Imath-3_2
WANTLIB += OpenEXR-3_4 OpenEXRCore-3_4 OpenEXRUtil-3_4 boost_thread-mt
WANTLIB += c jpeg m png tiff z

COMPILER=		base-clang ports-gcc
CXXFLAGS_base-clang=	-std=c++14

# from FreeBSD, thanks!
CXXFLAGS_base-clang+=	-D POVMSUCS2="char16_t"
CXXFLAGS_base-clang+=	-D UCS2="char16_t"
CXXFLAGS_base-clang+=	-D UCS4="char32_t"

DEBUG_PACKAGES=	${BUILD_PACKAGES}

LIB_DEPENDS=	devel/boost \
		graphics/jpeg \
		graphics/openexr \
		graphics/png \
		graphics/tiff

AUTOCONF_VERSION= 2.72
AUTOMAKE_VERSION= 1.16
CONFIGURE_STYLE= autoreconf

CONFIGURE_ARGS=	--with-x \
		--enable-watch-cursor \
		--disable-optimiz \
		--x-includes="${X11BASE}/include" \
		--includedir=${LOCALBASE}

CONFIGURE_ENV+=	COMPILED_BY="OpenBSD Ports <ports@openbsd.org>" \
		CPPFLAGS="-I${LOCALBASE}/include" \
		CXXFLAGS="-I${LOCALBASE}/include ${CXXFLAGS}" \
		LDFLAGS="-L${LOCALBASE}/lib -lm"

MAKE_FLAGS+=	DISTRIBUTION_MESSAGE_2="The OpenBSD ports team <ports@openbsd.org>." \
		povconfdir=${PREFIX}/share/examples/povray \
		povdocdir=${PREFIX}/share/doc/povray \
		povlibdir=${PREFIX}/share/povray

#MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config

NO_TEST=	Yes

post-configure:
	sed -i 's,%INSTALLDIR%,${PREFIX}/share/povray/,g' \
		${WRKSRC}/povray.conf
.for f in povray.1 scripts/allanim.sh scripts/allscene.sh scripts/portfolio.sh
	${SUBST_CMD} ${WRKSRC}/$f
.endfor

.include <bsd.port.mk>
