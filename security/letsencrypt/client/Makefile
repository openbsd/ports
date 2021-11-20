# $OpenBSD: Makefile,v 1.33 2021/11/20 14:41:41 sthen Exp $

COMMENT=	client for certificate authorities using ACME protocols

HOMEPAGE=	https://certbot.eff.org/

DISTNAME=	certbot-${MODPY_EGG_VERSION}

RUN_DEPENDS=	devel/py-configargparse${MODPY_FLAVOR} \
		devel/py-configobj${MODPY_FLAVOR} \
		devel/py-parsedatetime${MODPY_FLAVOR} \
		devel/py-zopecomponent${MODPY_FLAVOR} \
		devel/py-zopeinterface${MODPY_FLAVOR} \
		security/py-josepy${MODPY_FLAVOR} \
		security/letsencrypt/py-acme${MODPY_FLAVOR}=${MODPY_EGG_VERSION} \
		sysutils/py-distro
TEST_DEPENDS=	${RUN_DEPENDS}
MODPY_PYTEST=	Yes
#MODPY_PYTEST_ARGS=	tests

do-configure:
	sed -i -e 's,/etc,${SYSCONFDIR},' \
		-e 's,/var/lib,${LOCALSTATEDIR}/db,' \
		${WRKSRC}/certbot/compat/misc.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/certbot
	${INSTALL_DATA} ${WRKSRC}/examples/*.{ini,sh,cnf} \
		${PREFIX}/share/examples/certbot
	ln -s certbot ${PREFIX}/bin/letsencrypt # add courtesy symlink

.include <bsd.port.mk>
