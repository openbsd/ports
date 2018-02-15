# $OpenBSD: Makefile,v 1.1.1.1 2018/02/15 18:36:37 jasper Exp $

COMMENT =		Suricata update tool

MODPY_EGG_VERSION =	1.0.0b1
DISTNAME =		suricata-update-${MODPY_EGG_VERSION}
CATEGORIES =		security

MAINTAINER =		Jasper Lievisse Adriaanse

HOMEPAGE =		https://github.com/OISF/suricata-update

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		security/suricata \
			textproc/py-yaml

pre-configure:
	sed -i 's,/var/lib,${VARBASE},g' \
		${WRKSRC}/suricata/update/config.py \
		${WRKSRC}/suricata/update/main.py

.include <bsd.port.mk>
