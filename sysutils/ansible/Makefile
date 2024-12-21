COMMENT =		radically simple IT automation

MODPY_DISTV =	11.1.0
DISTNAME =		ansible-${MODPY_DISTV}
REVISION =		0

CATEGORIES =		sysutils

HOMEPAGE =		https://ansible.com/

MAINTAINER =		Pavel Korovin <pvk@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		sysutils/ansible-core>=2.18.0

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ansible
	${INSTALL_DATA} ${WRKSRC}/CHANGELOG-v*.rst ${PREFIX}/share/doc/ansible
	find ${PREFIX} -type f \( -name '.*' -o -name '*.orig' \) -delete
	find ${PREFIX} -type d \( -name '.*' -o -name changelogs \
		-o -name docs -o -name tests \) -exec rm -rf {} +

.include <bsd.port.mk>
