# $OpenBSD: Makefile,v 1.1.1.1 2014/11/04 08:16:13 jasper Exp $

COMMENT=	console CardDAV client with mutt support

MODPY_EGG_VERSION=	0.7.0
DISTNAME=		pyCardDAV-${MODPY_EGG_VERSION}
PKGNAME=		${DISTNAME:S/py/${MODPY_PY_PREFIX}/}

HOMEPAGE=		http://lostpackets.de/pycarddav/

CATEGORIES=		productivity

# Expat/MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=p/pyCardDAV/}

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
