# $OpenBSD: Makefile,v 1.9 2020/12/31 20:05:33 cwen Exp $

COMMENT =		powerful curses interface python file manager

MODPY_EGG_VERSION =	3.1
DISTNAME =		lfm-${MODPY_EGG_VERSION}

CATEGORIES =		misc

HOMEPAGE =		https://inigo.katxi.org/devel/lfm/

# GPLv3+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

# Actually required at runtime (pkg_resources), also see
# patches/patch-setup_py comment
MODPY_SETUPTOOLS =	Yes

NO_TEST =		Yes

# fix hardcoded paths
pre-build:
	sed -i 's,/usr,${LOCALBASE},g' ${WRKSRC}/lfm.1
	${SUBST_CMD} ${WRKSRC}/lfm/actions.py

.include <bsd.port.mk>
