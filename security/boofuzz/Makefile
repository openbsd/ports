COMMENT =	extensible network protocol fuzzer

MODPY_DISTV =	0.4.2
DISTNAME =	boofuzz-${MODPY_DISTV}
REVISION =	1

CATEGORIES =	security

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE =	https://github.com/jtpereyda/boofuzz

# GPLv2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		poetry-core

RUN_DEPENDS = 		devel/py-attrs \
			devel/py-click \
			devel/py-colorama \
			devel/py-crc32c \
			devel/py-funcy \
			devel/py-future \
			devel/py-serial \
			graphics/py-dot \
			net/py-impacket \
			sysutils/py-psutil \
			www/py-flask \
			www/py-tornado

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/boofuzz
	${INSTALL_DATA} ${WRKSRC}/examples/*.py \
			${PREFIX}/share/examples/boofuzz/

.include <bsd.port.mk>
