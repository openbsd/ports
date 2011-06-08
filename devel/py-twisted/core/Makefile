# $OpenBSD: Makefile,v 1.19 2011/06/08 17:39:26 jasper Exp $

COMMENT=	event-based Python framework (core module)

VERSION=	10.0.0
DISTNAME=	TwistedCore-${VERSION}
PKGNAME=	py-twisted-core-${VERSION}
REVISION =	2

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedCore

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/Core/${VERSION:R}/

RUN_DEPENDS=	devel/py-zopeinterface \
		security/py-openssl

WANTLIB +=	${MODPY_WANTLIB}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-twisted-core
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/doc/py-twisted-core/
	${INSTALL_SCRIPT} ${FILESDIR}/twisted-regen-dropin.cache ${PREFIX}/sbin/
	${SUBST_CMD} ${PREFIX}/sbin/twisted-regen-dropin.cache
	rm ${PREFIX}/sbin/twisted-regen-dropin.cache.*
	cd ${WRKSRC}/doc && \
		find . -type d -exec ${INSTALL_DATA_DIR} \
			${PREFIX}/share/doc/py-twisted-core/{} \; && \
		find . ! -type d -exec ${INSTALL_DATA} {} \
			${PREFIX}/share/doc/py-twisted-core/{} \;
	mv ${PREFIX}/share/doc/py-twisted-core/examples ${PREFIX}/share/examples/py-twisted-core
	cd ${PREFIX} && find . -name "*.orig" -exec rm {} \;


TRIAL_TARGET=twisted.test twisted.trial.test twisted.python.test \
	twisted.internet.test twisted.protocols

.include <bsd.port.mk>
