# $OpenBSD: Makefile,v 1.3 2019/07/12 20:49:33 sthen Exp $

COMMENT =	Pwntools CTF framework and exploit development library

MODPY_EGG_VERSION =	3.12.2
DISTNAME =	pwntools-${MODPY_EGG_VERSION}
REVISION =	0

CATEGORIES =	security

HOMEPAGE =	https://pwntools.com

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# 'Mostly MIT, some GPL/BSD, see LICENSE-pwntools.txt'
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/capstone/python \
			devel/py-dateutil \
			devel/py-elftools \
			devel/py-intervaltree \
			devel/py-serial \
			devel/py-sortedcontainers \
			devel/py-unicorn \
			net/py-socks \
			security/ROPgadget \
			security/py-paramiko \
			sysutils/py-psutil \
			textproc/py-pygments \
			www/py-mako \
			www/py-requests

# Remove code to check for and apply updates
post-extract:
	rm ${WRKSRC}/pwnlib/update.py

.include <bsd.port.mk>
