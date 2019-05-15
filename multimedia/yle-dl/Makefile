# $OpenBSD: Makefile,v 1.21 2019/05/15 12:04:39 kmos Exp $

GH_ACCOUNT =		aajanki
GH_PROJECT =		yle-dl
GH_TAGNAME =		20190502
MODPY_EGG_VERSION =	${GH_TAGNAME}

COMMENT =		download videos from YLE Areena

CATEGORIES =		multimedia

HOMEPAGE =		http://aajanki.github.io/yle-dl/
MAINTAINER =		Timo Myyra <timo.myyra@bittivirhe.fi>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python \
			lang/php

TEST_ENV =		HOME=/tmp

RUN_DEPENDS =		devel/py-attrs \
			devel/py-configargparse \
			devel/py-future \
			net/rtmpdump \
			security/py-cryptodome \
			www/py-requests \
			lang/php/${MODPHP_VERSION},-curl \
			net/wget \
			textproc/py-lxml \
			converters/py-mini-amf

MODPY_SETUPTOOLS =	Yes
MODPHP_BUILDDEP =	No

pre-configure:
	@sed -i -e "s,'php','${MODPHP_BIN}',g" ${WRKSRC}/yledl/io.py
	@sed -i -e "s,'pycryptodomex','pycryptodome',g" ${WRKSRC}/setup.py

.include <bsd.port.mk>
