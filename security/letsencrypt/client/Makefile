# $OpenBSD: Makefile,v 1.15 2017/04/27 22:18:14 sthen Exp $

COMMENT=	client for Let's Encrypt CA#'
REVISION=	1

DISTNAME=	certbot-${MODPY_EGG_VERSION}

RUN_DEPENDS=	devel/py-configargparse \
		devel/py-configobj \
		devel/py-mock \
		devel/py-parsedatetime \
		devel/py-zopecomponent \
		devel/py-zopeinterface \
		security/letsencrypt/py-acme=${MODPY_EGG_VERSION}
TEST_DEPENDS=	${RUN_DEPENDS}

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
