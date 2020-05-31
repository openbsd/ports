# $OpenBSD: Makefile,v 1.5 2020/05/31 12:07:09 jasper Exp $

COMMENT =	extensible network protocol fuzzer

MODPY_EGG_VERSION =	0.1.6
DISTNAME =	boofuzz-${MODPY_EGG_VERSION}
REVISION =	0

CATEGORIES =	security

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE =	https://github.com/jtpereyda/boofuzz

# GPLv2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS = 		databases/py-ldap3${MODPY_FLAVOR} \
			devel/py-attrs${MODPY_FLAVOR} \
			devel/py-click${MODPY_FLAVOR} \
			devel/py-colorama${MODPY_FLAVOR} \
			devel/py-crc32c${MODPY_FLAVOR} \
			devel/py-future${MODPY_FLAVOR} \
			devel/py-serial${MODPY_FLAVOR} \
			graphics/py-dot${MODPY_FLAVOR} \
			net/py-impacket \
			sysutils/py-psutil${MODPY_FLAVOR} \
			www/py-flask${MODPY_FLAVOR} \
			www/py-tornado${MODPY_FLAVOR}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/boofuzz/requests
	${INSTALL_DATA} ${WRKSRC}/examples/*.py \
			${PREFIX}/share/examples/boofuzz/
	${INSTALL_DATA} ${WRKSRC}/requests/*.py \
		${PREFIX}/share/examples/boofuzz/requests/

.include <bsd.port.mk>
