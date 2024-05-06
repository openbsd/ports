COMMENT =			retrieve and process nzb-files via web interface

VERSION =			4.3.0
DISTNAME =			SABnzbd-${VERSION}
PKGNAME =			sabnzbd-${VERSION}
REVISION =			0

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
				devel/py-cffi${MODPY_FLAVOR} \
				devel/py-cheetah${MODPY_FLAVOR} \
				devel/py-configobj${MODPY_FLAVOR} \
				devel/py-cparser${MODPY_FLAVOR} \
				devel/py-dateutil${MODPY_FLAVOR} \
				devel/py-jaraco-classes${MODPY_FLAVOR} \
				devel/py-jaraco-collections${MODPY_FLAVOR} \
				devel/py-jaraco-context${MODPY_FLAVOR} \
				devel/py-jaraco-functools${MODPY_FLAVOR} \
				devel/py-more-itertools${MODPY_FLAVOR} \
				devel/py-puremagic${MODPY_FLAVOR} \
				devel/py-six${MODPY_FLAVOR} \
				devel/py-tempora${MODPY_FLAVOR} \
				devel/py-tz${MODPY_FLAVOR} \
				devel/py-zc-lockfile${MODPY_FLAVOR} \
				misc/py-babelfish${MODPY_FLAVOR} \
				multimedia/py-guessit${MODPY_FLAVOR} \
				net/py-portend${MODPY_FLAVOR} \
				net/py-socks${MODPY_FLAVOR} \
				news/py-sabctools${MODPY_FLAVOR}>=8.1.0v0 \
				security/py-cryptography${MODPY_FLAVOR} \
				textproc/py-chardet${MODPY_FLAVOR} \
				textproc/py-feedparser${MODPY_FLAVOR} \
				textproc/py-jaraco-text${MODPY_FLAVOR} \
				textproc/py-rebulk${MODPY_FLAVOR} \
				www/py-CherryPy${MODPY_FLAVOR} \
				www/py-cheroot${MODPY_FLAVOR}

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
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
	    ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/sabnzbd

.include <bsd.port.mk>
