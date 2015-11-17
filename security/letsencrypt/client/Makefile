# $OpenBSD: Makefile,v 1.3 2015/11/17 14:03:41 sthen Exp $

COMMENT=	client for Let's Encrypt CA#'

V=		20151114
REVISION=	1
MODPY_EGG_VERSION= 0.0.0.dev$V
DISTNAME=	letsencrypt-0.0.0.dev$V
PKGNAME=	letsencrypt-0.0.0pre$V

# Apache 2.0

MODULES=	lang/python

RUN_DEPENDS=	devel/py-configargparse \
		devel/py-configobj \
		devel/py-mock \
		devel/py-parsedatetime \
		devel/py-zopecomponent \
		devel/py-zopeinterface \
		devel/py-python2-pythondialog \
		security/letsencrypt/py-acme=0.0.0pre$V \
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
