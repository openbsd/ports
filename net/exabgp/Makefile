# $OpenBSD: Makefile,v 1.6 2018/02/03 11:28:23 sthen Exp $

COMMENT=		BGP route injector (supporting flow routes, etc)

MODPY_EGG_VERSION= 	3.4.23
GH_ACCOUNT=		exa-networks
GH_PROJECT=		exabgp
GH_TAGNAME=		${MODPY_EGG_VERSION}
DISTNAME=		exabgp-${MODPY_EGG_VERSION}

CATEGORIES=		net

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes

TEST_DEPENDS=		devel/py-nose

pre-configure:
	${SUBST_CMD} -m 555 -c ${FILESDIR}/exabgp ${WRKSRC}/sbin/exabgp

post-install:
.for i in 1 5
	${INSTALL_MAN} ${WRKSRC}/doc/man/*.$i ${PREFIX}/man/man$i/
.endfor

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m nose ./qa/tests/*_test.py

.include <bsd.port.mk>
