# $OpenBSD: Makefile,v 1.1.1.1 2015/11/17 12:38:43 sthen Exp $

COMMENT=	client for Let's Encrypt CA#'

V=		20151114
MODPY_EGG_VERSION= 0.0.0.dev$V
DISTNAME=	letsencrypt-0.0.0.dev$V
PKGNAME=	letsencrypt-0.0.0pre$V
DISTFILES=	${DISTNAME}{v0.0.0.dev$V}.tar.gz

CATEGORIES=	security www

HOMEPAGE=	https://letsencrypt.org/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://github.com/letsencrypt/letsencrypt/archive/

MODULES=	lang/python
MODPY_SETUPTOOLS= Yes

RUN_DEPENDS=	devel/py-configargparse \
		devel/py-configobj \
		devel/py-mock \
		devel/py-parsedatetime \
		devel/py-zopecomponent \
		devel/py-zopeinterface \
		devel/py-python2-pythondialog \
		security/py-acme=0.0.0pre$V \
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
