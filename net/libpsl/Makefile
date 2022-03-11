COMMENT =		public suffix list library

V =			0.21.1
DISTNAME =		libpsl-${V}

SHARED_LIBS +=		psl	1.2	# 8.3

CATEGORIES =		net www

HOMEPAGE =		https://github.com/rockdaboot/libpsl/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c iconv idn2 intl unistring

MASTER_SITES =		${HOMEPAGE}/releases/download/${V}/

DEBUG_PACKAGES =	${BUILD_PACKAGES}

MODULES =		lang/python

MODPY_RUNDEP =		No

BUILD_DEPENDS =		devel/gettext,-tools \
			sysutils/coreutils
LIB_DEPENDS =		converters/libunistring \
			devel/gettext,-runtime \
			devel/libidn2

CONFIGURE_STYLE = gnu

CONFIGURE_ARGS +=	--enable-builtin=libidn2 \
			--enable-runtime=libidn2
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib ${LDFLAGS}"

pre-configure:
	@ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
