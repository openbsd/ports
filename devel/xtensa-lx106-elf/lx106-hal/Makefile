# $OpenBSD: Makefile,v 1.1.1.1 2020/03/12 15:05:21 tracey Exp $

COMMENT =		hardware abstraction library for xtensa lx106
VERSION	=		1.0

DISTNAME =		lx106-hal
PKGNAME =		xtensa-${DISTNAME}-${VERSION}

GH_ACCOUNT =		tommie
GH_PROJECT =		lx106-hal
GH_COMMIT =		e4bcc63c9c016e4f8848e7e8f512438ca857531d

BUILD_DEPENDS =		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/xtensa-lx106-elf/gcc
RUN_DEPENDS =		devel/xtensa-lx106-elf/gcc

CONFIGURE_ENV =		CC="${LOCALBASE}/bin/${CONFIG}-gcc"

USE_GMAKE =		Yes

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.11

CONFIGURE_STYLE =	autoreconf
CONFIGURE_ARGS +=	--host=${CONFIG}

pre-configure:
	@cd ${WRKSRC} && ${AUTOCONF_ENV} autoreconf -i

.include <bsd.port.mk>
