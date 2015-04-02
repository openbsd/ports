# $OpenBSD: Makefile,v 1.17 2015/04/02 14:21:18 jasper Exp $

COMMENT =	super-fast templating language

MODPY_EGG_VERSION = 0.9.1
DISTNAME =	Mako-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}

REVISION =	1

CATEGORIES =	www

HOMEPAGE =	http://www.makotemplates.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

FLAVORS=	python3
FLAVOR?=

RUN_DEPENDS =	textproc/py-MarkupSafe${MODPY_FLAVOR} \
		www/py-beaker${MODPY_FLAVOR}

TEST_DEPENDS =	devel/py-nose${MODPY_FLAVOR} \
		devel/py-babel${MODPY_FLAVOR} \
		${RUN_DEPENDS}

MODPY_SETUPTOOLS = Yes

.if ${FLAVOR:Mpython3}
post-install:
	mv ${PREFIX}/bin/mako-render \
		${PREFIX}/bin/mako-render${MODPY_BIN_SUFFIX}
.endif

.include <bsd.port.mk>
