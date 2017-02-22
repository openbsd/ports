# $OpenBSD: Makefile,v 1.9 2017/02/22 13:25:36 jca Exp $

COMMENT =		public suffix list library

DISTNAME =		libpsl-0.15.0
REVISION =		0

SHARED_LIBS +=		psl	1.0	# 5.0

CATEGORIES =		net www

HOMEPAGE =		https://github.com/rockdaboot/libpsl/

MAINTAINER =		Jeremie Courreges-Anglas <jca@wxcvbn.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c iconv idn2 unistring

MASTER_SITES =		${HOMEPAGE}/releases/download/${DISTNAME}/

MODULES =		lang/python

MODPY_RUNDEP =		No

LIB_DEPENDS =		converters/libunistring \
			devel/libidn2

BUILD_DEPENDS =		sysutils/coreutils

CONFIGURE_STYLE = gnu

CONFIGURE_ARGS +=	--enable-builtin=libidn2 \
			--enable-runtime=libidn2
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	@ln -s ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
