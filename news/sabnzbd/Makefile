COMMENT =			retrieve and process nzb-files via web interface

VERSION =			4.4.1
DISTNAME =			SABnzbd-${VERSION}
PKGNAME =			sabnzbd-${VERSION}

CATEGORIES =			news

HOMEPAGE =			https://sabnzbd.org/

MAINTAINER =			Bjorn Ketelaars <bket@openbsd.org>

# GPLv2
PERMIT_PACKAGE =		Yes

SITES =		https://github.com/sabnzbd/sabnzbd/releases/download/${VERSION}/
EXTRACT_SUFX =			-src.tar.gz

MODULES =			lang/python

BUILD_DEPENDS =			${_MODPY_BUILD_DEPENDS}
RUN_DEPENDS =			archivers/par2cmdline \
				archivers/unrar \
				archivers/unzip \
				devel/py-cffi \
				devel/py-cheetah \
				devel/py-configobj \
				devel/py-cparser \
				devel/py-dateutil \
				devel/py-jaraco-classes \
				devel/py-jaraco-collections \
				devel/py-jaraco-context \
				devel/py-jaraco-functools \
				devel/py-more-itertools \
				devel/py-puremagic \
				devel/py-six \
				devel/py-tempora \
				devel/py-tz \
				devel/py-zc-lockfile \
				misc/py-babelfish \
				multimedia/py-guessit \
				net/py-apprise \
				net/py-portend \
				net/py-socks \
				news/py-sabctools>=8.2.5v0 \
				security/py-cryptography \
				textproc/py-chardet \
				textproc/py-feedparser \
				textproc/py-jaraco-text \
				textproc/py-rebulk \
				www/py-CherryPy \
				www/py-cheroot

NO_BUILD =			Yes

# XXX broken, needs pyfakefs, pytest-httpserver, tavern and tavalidate (not in
# ports)
NO_TEST =			Yes

do-install:
	${INSTALL_DATA_DIR} \
	    ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/sabnzbd
	cp -Rp ${WRKSRC}/* \
	    ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/sabnzbd
	rm -rf ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/sabnzbd/tests
	${SUBST_CMD} -m 555 -c ${FILESDIR}/sabnzbd ${WRKSRC}/sabnzbd/sabnzbd
	${INSTALL_SCRIPT} ${WRKSRC}/sabnzbd/sabnzbd ${PREFIX}/bin/sabnzbd
	chown -R ${BINOWN}:${BINGRP} \
	    ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/sabnzbd

post-install:
	${MODPY_COMPILEALL} \
	    ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/sabnzbd

.include <bsd.port.mk>
