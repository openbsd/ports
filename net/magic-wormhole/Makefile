COMMENT =		securely transfer data between computers

MODPY_DISTV =	0.17.0
DISTNAME =		magic_wormhole-${MODPY_DISTV}
PKGNAME =		${DISTNAME:S/_/-/}
REVISION =		0

HOMEPAGE =		https://magic-wormhole.readthedocs.io

CATEGORIES =		net

# MIT
PERMIT_PACKAGE =	Yes

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		archivers/py-zipstream-ng \
			devel/py-attrs \
			devel/py-automat \
			devel/py-click \
			devel/py-iterable-io \
			devel/py-six \
			devel/py-tqdm \
			devel/py-twisted \
			devel/py-txaio \
			net/py-txtorcon \
			security/py-PyNaCl \
			security/py-cryptography \
			security/py-hkdf \
			security/py-spake2>=0.9 \
			textproc/py-humanize \
			www/py-autobahn

# XXX completes partially, needs unported
# "magic-wormhole-transit-relay==0.1.2"
# "magic-wormhole-mailbox-server==0.3.1"
TEST_DEPENDS =		devel/py-mock \
			devel/py-txaio \
			devel/pyflakes

post-install:
	${INSTALL_DATA} -D ${PREFIX}/{wormhole_complete.bash,share/bash-completion/completions/wormhole}
	${INSTALL_DATA} -D ${PREFIX}/{wormhole_complete.fish,share/fish/vendor_completions.d/wormhole.fish}
	${INSTALL_DATA} -D ${PREFIX}/{wormhole_complete.zsh,share/zsh/site-functions/_wormhole}
	rm -f ${PREFIX}/wormhole_complete.*sh

.include <bsd.port.mk>
