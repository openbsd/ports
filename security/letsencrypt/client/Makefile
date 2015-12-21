# $OpenBSD: Makefile,v 1.9 2015/12/21 09:37:57 sthen Exp $

COMMENT=	client for Let's Encrypt CA#'

DISTNAME=	letsencrypt-${MODPY_EGG_VERSION}

RUN_DEPENDS=	devel/py-configargparse \
		devel/py-configobj \
		devel/py-mock \
		devel/py-parsedatetime \
		devel/py-zopecomponent \
		devel/py-zopeinterface \
		devel/py-python2-pythondialog \
		security/letsencrypt/py-acme=${MODPY_EGG_VERSION} \
		sysutils/py-psutil
TEST_DEPENDS=	${RUN_DEPENDS}

do-configure:
	sed -i -e 's,/etc,${SYSCONFDIR},' \
		-e 's,/var/lib,${LOCALSTATEDIR}/db,' \
		${WRKSRC}/letsencrypt/constants.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/letsencrypt
	${INSTALL_DATA} ${WRKSRC}/examples/*.{ini,sh,cnf} \
		${PREFIX}/share/examples/letsencrypt

.include <bsd.port.mk>
