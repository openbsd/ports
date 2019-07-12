# $OpenBSD: Makefile,v 1.4 2019/07/12 20:48:59 sthen Exp $

COMMENT=	console CardDAV client with mutt support

MODPY_EGG_VERSION=	0.7.0
DISTNAME=		pyCardDAV-${MODPY_EGG_VERSION}
PKGNAME=		${DISTNAME:S/py/${MODPY_PY_PREFIX}/}
REVISION=		0

HOMEPAGE=		http://lostpackets.de/pycarddav/

CATEGORIES=		productivity

# Expat/MIT
PERMIT_PACKAGE=	Yes

MODPY_PI =		Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		devel/py-urwid \
			devel/py-xdg \
			textproc/py-lxml \
			textproc/py-vobject \
			www/py-requests

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pyCardDAV/
	${INSTALL_DATA} ${WRKSRC}/pycard.conf.sample \
		${PREFIX}/share/examples/pyCardDAV/

.include <bsd.port.mk>
