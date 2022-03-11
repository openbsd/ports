COMMENT =	extensible network protocol fuzzer

MODPY_EGG_VERSION =	0.2.1
DISTNAME =	boofuzz-${MODPY_EGG_VERSION}
REVISION =	1

CATEGORIES =	security

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE =	https://github.com/jtpereyda/boofuzz

# GPLv2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS = 		devel/py-attrs${MODPY_FLAVOR} \
			devel/py-click${MODPY_FLAVOR} \
			devel/py-colorama${MODPY_FLAVOR} \
			devel/py-crc32c${MODPY_FLAVOR} \
			devel/py-future${MODPY_FLAVOR} \
			devel/py-serial${MODPY_FLAVOR} \
			graphics/py-dot${MODPY_FLAVOR} \
			net/py-impacket${MODPY_FLAVOR} \
			sysutils/py-psutil${MODPY_FLAVOR} \
			www/py-flask${MODPY_FLAVOR} \
			www/py-tornado${MODPY_FLAVOR}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/boofuzz
	${INSTALL_DATA} ${WRKSRC}/examples/*.py \
			${PREFIX}/share/examples/boofuzz/

.include <bsd.port.mk>
