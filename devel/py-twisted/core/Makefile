# $OpenBSD: Makefile,v 1.11 2008/10/28 09:28:24 ajacoutot Exp $

COMMENT=	event-based Python framework (core module)

VERSION=	8.1.0
DISTNAME=	TwistedCore-${VERSION}
PKGNAME=	py-twisted-core-${VERSION}p0

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedCore

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/Core/${VERSION:R}/

RUN_DEPENDS=	:py-zopeinterface-*:devel/py-zopeinterface \
		:py-openssl-*:security/py-openssl
REGRESS_DEPENDS=:python-bz2-*:lang/python/${MODPY_VERSION},-bz2

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-twisted-core
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/doc/py-twisted-core/
	${INSTALL_SCRIPT} ${FILESDIR}/twisted-regen-dropin.cache ${PREFIX}/sbin/
	${SUBST_CMD} ${PREFIX}/sbin/twisted-regen-dropin.cache
	cd ${WRKSRC}/doc && \
		find . -type d -exec ${INSTALL_DATA_DIR} \
			${PREFIX}/share/doc/py-twisted-core/{} \; && \
		find . ! -type d -exec ${INSTALL_DATA} {} \
			${PREFIX}/share/doc/py-twisted-core/{} \;
	mv ${PREFIX}/share/doc/py-twisted-core/examples ${PREFIX}/share/examples/py-twisted-core


do-regress: fake
	env PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${WRKINST}${LOCALBASE}/bin/trial \
			--temp-directory=${WRKBUILD} \
			twisted.test twisted.trial.test twisted.python.test twisted.internet.test

.include <bsd.port.mk>
