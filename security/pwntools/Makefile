# $OpenBSD: Makefile,v 1.9 2020/07/17 18:08:56 jasper Exp $

COMMENT =	Pwntools CTF framework and exploit development library

MODPY_EGG_VERSION =	4.2.1
DISTNAME =	pwntools-${MODPY_EGG_VERSION}

CATEGORIES =	security

HOMEPAGE =	https://pwntools.com

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# 'Mostly MIT, some GPL/BSD, see LICENSE-pwntools.txt'
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/capstone/python${MODPY_FLAVOR} \
			devel/py-dateutil${MODPY_FLAVOR} \
			devel/py-elftools${MODPY_FLAVOR} \
			devel/py-intervaltree${MODPY_FLAVOR} \
			devel/py-serial${MODPY_FLAVOR} \
			devel/py-sortedcontainers${MODPY_FLAVOR} \
			devel/py-unicorn${MODPY_FLAVOR}<=1.0.2rc3 \
			net/py-socks${MODPY_FLAVOR} \
			security/ROPgadget \
			security/py-paramiko${MODPY_FLAVOR} \
			sysutils/py-packaging${MODPY_FLAVOR} \
			sysutils/py-psutil${MODPY_FLAVOR} \
			textproc/py-pygments${MODPY_FLAVOR} \
			www/py-mako${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

# Remove code to check for and apply updates
post-extract:
	rm ${WRKSRC}/pwnlib/update.py

# ???
post-install:
	rm ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/requirements.txt

.include <bsd.port.mk>
