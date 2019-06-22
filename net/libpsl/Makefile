# $OpenBSD: Makefile,v 1.15 2019/06/22 22:44:06 jca Exp $

COMMENT =		public suffix list library

DISTNAME =		libpsl-0.20.2
REVISION =		0

SHARED_LIBS +=		psl	1.2	# 8.1

CATEGORIES =		net www

HOMEPAGE =		https://github.com/rockdaboot/libpsl/

MAINTAINER =		Jeremie Courreges-Anglas <jca@wxcvbn.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c iconv idn2 intl unistring

MASTER_SITES =		${HOMEPAGE}/releases/download/${DISTNAME}/

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
