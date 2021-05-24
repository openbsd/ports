# $OpenBSD: Makefile,v 1.4 2021/05/24 17:41:15 solene Exp $

COMMENT =		cross-platform curses-based monitoring tool

MODPY_EGG_VERSION =	3.1.7

DISTNAME =		Glances-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:L}

CATEGORIES =		sysutils

HOMEPAGE =		https://nicolargo.github.io/glances

MAINTAINER =		Ashton Fagg <ashton@fagg.id.au>

# LGPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
RUN_DEPENDS =		devel/py-future${MODPY_FLAVOR} \
			sysutils/py-psutil${MODPY_FLAVOR} \
			www/py-bottle${MODPY_FLAVOR}

pre-configure:
	sed -i 's,/etc,${SYSCONFDIR},g' ${WRKSRC}/glances/config.py

.include <bsd.port.mk>
