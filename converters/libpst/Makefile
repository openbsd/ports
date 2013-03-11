# $OpenBSD: Makefile,v 1.28 2013/03/11 01:30:27 espie Exp $

BROKEN-hppa=		linking .libs/python-libpst.o fails

COMMENT-main=		read and convert Microsoft Outlook mail files
COMMENT-python=		python interface to libpst

DISTNAME=		libpst-0.6.55
SHARED_LIBS +=  pst                  2.0      # 5.5

PKGNAME-main=		${DISTNAME}
PKGNAME-python=		py-${DISTNAME}

CATEGORIES=		converters mail

HOMEPAGE=		http://www.five-ten-sg.com/libpst/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

cWANTLIB += m pthread stdc++ ${MODLIBICONV_WANTLIB}

WANTLIB-main += ${cWANTLIB}
WANTLIB-main += c expat fontconfig freetype jpeg m png pthread stdc++
WANTLIB-main += gd>=20 z

WANTLIB-python += ${cWANTLIB}
WANTLIB-python += pst>=1 util boost_python

MASTER_SITES=		${HOMEPAGE}/packages/ \
			http://distfiles.nl/

MULTI_PACKAGES=		-main -python

MODULES=		converters/libiconv \
			lang/python

BUILD_DEPENDS=		${RUN_DEPENDS-main}
RUN_DEPENDS-main=	graphics/ImageMagick
LIB_DEPENDS-main=	${MODLIBICONV_LIB_DEPENDS} \
			graphics/gd

LIB_DEPENDS-python=	${MODLIBICONV_LIB_DEPENDS} \
			${BASE_PKGPATH} \
			devel/boost

USE_LIBTOOL=		Yes
USE_GMAKE=		Yes
USE_GROFF =		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-pst-debug \
			--disable-static-tools \
			--enable-libpst-shared
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${MODPY_INCDIR}" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			PYTHON_LDFLAGS="-L${LOCALBASE}/lib -lpython${MODPY_VERSION} -lm" \
			PYTHON_BIN="python${MODPY_VERSION}"

# XXX eats all memory
.if ${MACHINE_ARCH} == "sparc64" || ${MACHINE_ARCH} == "hppa"
CFLAGS+=	-O0
.endif

FAKE_FLAGS+=		htmldir="${PREFIX}/share/doc/libpst/" \
			htmldeveldir="${PREFIX}/share/doc/libpst/devel/"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure

post-install:
	rm ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/*.{a,la}

.include <bsd.port.mk>
