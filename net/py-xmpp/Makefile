# $OpenBSD: Makefile,v 1.21 2019/07/12 20:48:46 sthen Exp $

COMMENT=		Python XMPP and Jabber implementation

MODPY_EGG_VERSION=	1.1.2
DISTNAME=		pyxmpp-${MODPY_EGG_VERSION}
PKGNAME=		${DISTNAME:S/^py/py-/}
CATEGORIES=		net devel
REVISION=		2

HOMEPAGE=		http://pyxmpp.jajcus.net/

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += pthread xml2

MASTER_SITES=	http://cloud.github.com/downloads/Jajcus/pyxmpp/

MODULES=	lang/python

BUILD_DEPENDS=	textproc/libxml,-python
RUN_DEPENDS=	textproc/libxml,-python \
		net/py-dnspython

MODPY_ADJ_FILES=examples/*.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-xmpp
	${INSTALL_SCRIPT} ${WRKSRC}/examples/*.py \
		${PREFIX}/share/examples/py-xmpp
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-xmpp
	cd ${WRKSRC}/doc/www/api && tar cf - . | \
		(cd ${PREFIX}/share/doc/py-xmpp && tar xf -)

do-test:
	@cd ${WRKSRC}/tests && PYTHONPATH=../ ${MODPY_BIN} all.py

.include <bsd.port.mk>
