# $OpenBSD: Makefile,v 1.1.1.1 2006/11/11 04:13:31 alek Exp $

COMMENT=	"Python XMPP and Jabber implementation"

DISTNAME=	pyxmpp-1.0.0
PKGNAME=	${DISTNAME:S/^py/py-/}
CATEGORIES=	net devel

HOMEPAGE=	http://pyxmpp.jajcus.net/

MAINTAINER=	Will Maier <willmaier@ml1.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		xml2

MASTER_SITES=	${HOMEPAGE}downloads/

MODULES=	lang/python

RUN_DEPENDS=	:py-libxml-*:textproc/libxml,-python \
		:py-dnspython-*:net/py-dnspython
REGRESS_DEPENDS=${RUN_DEPENDS}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-xmpp
	${INSTALL_SCRIPT} ${WRKSRC}/examples/*.py \
		${PREFIX}/share/examples/py-xmpp
	perl -pi
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-xmpp
	cd ${WRKSRC}/doc/www/api && tar cf - . | \
		(cd ${PREFIX}/share/doc/py-xmpp && tar xvf -)

do-regress:
	@cd ${WRKSRC}/tests && PYTHONPATH=../ ${MODPY_BIN} all.py

.include <bsd.port.mk>
