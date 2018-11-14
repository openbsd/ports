# $OpenBSD: Makefile,v 1.6 2018/11/14 19:18:16 jasper Exp $

COMMENT =		Suricata update tool

MODPY_EGG_VERSION =	1.0.0
DISTNAME =		suricata-update-${MODPY_EGG_VERSION}
CATEGORIES =		security
EPOCH =			0

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE =		https://github.com/OISF/suricata-update

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes

RUN_DEPENDS =		security/suricata \
			textproc/py-yaml

pre-configure:
	sed -i 's,/var/lib,${VARBASE},g' \
		${WRKSRC}/suricata/update/config.py \
		${WRKSRC}/suricata/update/main.py

.include <bsd.port.mk>
