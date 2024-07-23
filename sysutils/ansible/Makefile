COMMENT =		radically simple IT automation

MODPY_EGG_VERSION =	10.2.0
DISTNAME =		ansible-${MODPY_EGG_VERSION}

CATEGORIES =		sysutils

HOMEPAGE =		https://ansible.com/

MAINTAINER =		Pavel Korovin <pvk@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		sysutils/ansible-core>=2.17.2

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ansible
	${INSTALL_DATA} ${WRKSRC}/CHANGELOG-v*.rst ${PREFIX}/share/doc/ansible
	find ${PREFIX} -type f \( -name '.*' -o -name '*.orig' \) -delete
	find ${PREFIX} -type d \( -name '.*' -o -name changelogs \
		-o -name docs -o -name tests \) -exec rm -rf {} +

.include <bsd.port.mk>
