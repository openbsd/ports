COMMENT=	library for simple use of LV2 plugins in applications

DISTNAME=	lilv-0.24.14
REVISION=	2

SHARED_LIBS=	lilv-0		0.0 # 0.24

CATEGORIES=	audio

HOMEPAGE=	https://drobilla.net/software/lilv

# ISC
PERMIT_PACKAGE= Yes

WANTLIB += FLAC c ogg opus serd-0 sndfile sord-0 sratom-0 vorbis
WANTLIB += vorbisenc mpg123

SITES=		https://download.drobilla.net/

EXTRACT_SUFX=	.tar.bz2

MODULES=	lang/python

BUILD_DEPENDS=	devel/py-setuptools

LIB_DEPENDS=	audio/libsndfile \
		audio/sratom

# requires library gcov
NO_TEST=	Yes

do-configure:
	cd ${WRKSRC} && env -i ${CONFIGURE_ENV} \
	   ${MODPY_BIN} ./waf configure \
		--prefix=${PREFIX} \
		--mandir=${PREFIX}/man \
		--default-lv2-path=${PREFIX}/lib/lv2 \
		--no-bash-completion \
		--dyn-manifest

do-build:
	cd ${WRKSRC} && env -i ${MAKE_ENV} ${MODPY_BIN} ./waf -v

do-install:
	cd ${WRKSRC} && env -i ${MAKE_ENV} ${MODPY_BIN} ./waf install \
		--destdir=${DESTDIR}

post-install:
	${MODPY_COMPILEALL} ${DESTDIR}${MODPY_SITEPKG}/lilv.py

.include <bsd.port.mk>
