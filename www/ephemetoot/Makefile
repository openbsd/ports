# $OpenBSD: Makefile,v 1.1.1.1 2020/07/01 17:32:48 paco Exp $

COMMENT =		tool for deleting old Mastodon toots

MODPY_EGG_VERSION =	2.3.1
GH_ACCOUNT =		hughrun
GH_PROJECT =		ephemetoot
GH_TAGNAME =		v${MODPY_EGG_VERSION}

CATEGORIES =		www

MAINTAINER =		Paco Esteban <paco@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =		textproc/py-pyaml${MODPY_FLAVOR} \
			www/py-mastodon.py \
			www/py-requests${MODPY_FLAVOR}

NO_TEST =		Yes

post-extract:
	mv ${WRKSRC}/lib ${WRKSRC}/ephemetoot

.include <bsd.port.mk>
