# $OpenBSD: Makefile,v 1.11 2010/11/19 22:31:37 espie Exp $

COMMENT=		Python XMPP and Jabber implementation

MODPY_EGG_VERSION=	1.0.1
DISTNAME=		pyxmpp-${MODPY_EGG_VERSION}
PKGNAME=		${DISTNAME:S/^py/py-/}
REVISION=		1
CATEGORIES=		net devel

HOMEPAGE=		http://pyxmpp.jajcus.net/

MAINTAINER=		Will Maier <wcmaier@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		xml2

MASTER_SITES=	${HOMEPAGE}downloads/

MODULES=	lang/python

BUILD_DEPENDS=	textproc/libxml,-python
RUN_DEPENDS=	textproc/libxml,-python \
		net/py-dnspython
REGRESS_DEPENDS=${RUN_DEPENDS}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-xmpp
	${INSTALL_SCRIPT} ${WRKSRC}/examples/*.py \
		${PREFIX}/share/examples/py-xmpp
	perl -pi -e "s,/usr/bin/python,${MODPY_BIN}," \
		${PREFIX}/share/examples/py-xmpp/*.py
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-xmpp
	cd ${WRKSRC}/doc/www/api && tar cf - . | \
		(cd ${PREFIX}/share/doc/py-xmpp && tar xf -)

do-regress:
	@cd ${WRKSRC}/tests && PYTHONPATH=../ ${MODPY_BIN} all.py

.include <bsd.port.mk>
