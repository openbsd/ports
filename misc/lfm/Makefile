# $OpenBSD: Makefile,v 1.11 2021/11/02 00:01:37 sthen Exp $

COMMENT =		powerful curses interface python file manager

MODPY_EGG_VERSION =	3.1
DISTNAME =		lfm-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		misc

HOMEPAGE =		https://inigo.katxi.org/devel/lfm/

# GPLv3+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes

# Actually required at runtime (pkg_resources), also see
# patches/patch-setup_py comment
MODPY_SETUPTOOLS =	Yes

NO_TEST =		Yes

# fix hardcoded paths
pre-build:
	sed -i 's,/usr,${LOCALBASE},g' ${WRKSRC}/lfm.1
	${SUBST_CMD} ${WRKSRC}/lfm/actions.py

.include <bsd.port.mk>
