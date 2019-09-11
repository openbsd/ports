# $OpenBSD: Makefile,v 1.23 2019/09/11 21:06:22 sthen Exp $

COMMENT=	client for certificate authorities using ACME protocols

HOMEPAGE=	https://certbot.eff.org/

DISTNAME=	certbot-${MODPY_EGG_VERSION}

RUN_DEPENDS=	devel/py-configargparse${MODPY_FLAVOR} \
		devel/py-configobj${MODPY_FLAVOR} \
		devel/py-mock${MODPY_FLAVOR} \
		devel/py-parsedatetime${MODPY_FLAVOR} \
		devel/py-zopecomponent${MODPY_FLAVOR} \
		devel/py-zopeinterface${MODPY_FLAVOR} \
		security/py-josepy${MODPY_FLAVOR} \
		security/letsencrypt/py-acme${MODPY_FLAVOR}=${MODPY_EGG_VERSION} \
		sysutils/py-distro
TEST_DEPENDS=	${RUN_DEPENDS}

MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}

do-configure:
	sed -i -e 's,/etc,${SYSCONFDIR},' \
		-e 's,/var/lib,${LOCALSTATEDIR}/db,' \
		${WRKSRC}/certbot/constants.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/certbot
	${INSTALL_DATA} ${WRKSRC}/examples/*.{ini,sh,cnf} \
		${PREFIX}/share/examples/certbot
	ln -s certbot ${PREFIX}/bin/letsencrypt # add courtesy symlink

.include <bsd.port.mk>
