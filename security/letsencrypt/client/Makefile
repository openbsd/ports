# $OpenBSD: Makefile,v 1.4 2015/11/17 14:19:37 sthen Exp $

COMMENT=	client for Let's Encrypt CA#'

DISTNAME=	letsencrypt-${MODPY_EGG_VERSION}
REVISION=	1

MODULES=	lang/python

RUN_DEPENDS=	devel/py-configargparse \
		devel/py-configobj \
		devel/py-mock \
		devel/py-parsedatetime \
		devel/py-zopecomponent \
		devel/py-zopeinterface \
		devel/py-python2-pythondialog \
		security/letsencrypt/py-acme=0.0.0pre${LE_RELEASE} \
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
