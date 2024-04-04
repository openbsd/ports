COMMENT =		securely transfer data between computers

MODPY_EGG_VERSION =	0.14.0
DISTNAME =		magic-wormhole-${MODPY_EGG_VERSION}

HOMEPAGE =		https://magic-wormhole.readthedocs.io

CATEGORIES =		net

# MIT
PERMIT_PACKAGE =	Yes

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-attrs${MODPY_FLAVOR} \
			devel/py-automat${MODPY_FLAVOR} \
			devel/py-click${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			devel/py-tqdm${MODPY_FLAVOR} \
			devel/py-twisted${MODPY_FLAVOR} \
			devel/py-txaio${MODPY_FLAVOR} \
			net/py-txtorcon${MODPY_FLAVOR} \
			security/py-PyNaCl${MODPY_FLAVOR} \
			security/py-cryptography${MODPY_FLAVOR} \
			security/py-hkdf${MODPY_FLAVOR} \
			security/py-spake2${MODPY_FLAVOR} \
			textproc/py-humanize${MODPY_FLAVOR} \
			www/py-autobahn${MODPY_FLAVOR}

BASH_COMP =		

# XXX completes partially, needs unported
# "magic-wormhole-transit-relay==0.1.2"
# "magic-wormhole-mailbox-server==0.3.1"
TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR} \
			devel/py-txaio${MODPY_FLAVOR} \
			devel/pyflakes${MODPY_FLAVOR}

post-install:
	${INSTALL_DATA} -D ${PREFIX}/{wormhole_complete.bash,share/bash-completion/completions/wormhole}
	${INSTALL_DATA} -D ${PREFIX}/{wormhole_complete.fish,share/fish/vendor_completions.d/wormhole.fish}
	${INSTALL_DATA} -D ${PREFIX}/{wormhole_complete.zsh,share/zsh/site-functions/_wormhole}
	rm -f ${PREFIX}/wormhole_complete.*sh

.include <bsd.port.mk>
