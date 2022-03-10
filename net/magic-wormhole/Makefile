# $OpenBSD: Makefile,v 1.4 2022/03/10 12:03:33 kn Exp $

COMMENT =		securely transfer data between computers

MODPY_EGG_VERSION =	0.12.0
DISTNAME =		magic-wormhole-${MODPY_EGG_VERSION}
REVISION =		2

HOMEPAGE =		https://magic-wormhole.readthedocs.io

CATEGORIES =		net

# MIT
PERMIT_PACKAGE =	Yes

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-attrs${MODPY_FLAVOR} \
			devel/py-automat${MODPY_FLAVOR} \
			devel/py-click${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			devel/py-tqdm${MODPY_FLAVOR} \
			devel/py-twisted${MODPY_FLAVOR} \
			devel/py-txaio${MODPY_FLAVOR} \
			net/py-txtorcon${MODPY_FLAVOR} \
			security/py-PyNaCl${MODPY_FLAVOR} \
			security/py-hkdf${MODPY_FLAVOR} \
			security/py-spake2${MODPY_FLAVOR} \
			textproc/py-humanize${MODPY_FLAVOR} \
			www/py-autobahn${MODPY_FLAVOR}

# XXX completes partially, needs unported
# "magic-wormhole-transit-relay==0.1.2"
# "magic-wormhole-mailbox-server==0.3.1"
TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR} \
			devel/py-txaio${MODPY_FLAVOR} \
			devel/pyflakes${MODPY_FLAVOR}

.include <bsd.port.mk>
