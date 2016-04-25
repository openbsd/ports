# $OpenBSD: Makefile,v 1.3 2016/04/25 14:43:13 sthen Exp $

COMMENT=	BGP route injector (supporting flow routes, etc)

MODPY_EGG_VERSION= 3.4.16
GH_ACCOUNT=	exa-networks
GH_PROJECT=	exabgp
GH_TAGNAME=	${MODPY_EGG_VERSION}
DISTNAME=	exabgp-${MODPY_EGG_VERSION}

CATEGORIES=	net

HOMEPAGE=	https://github.com/exa-networks/exabgp

# BSD
PERMIT_PACKAGE_CDROM=	 Yes

MODULES=	lang/python
MODPY_SETUPTOOLS= Yes

pre-configure:
	${SUBST_CMD} -m 555 -c ${FILESDIR}/exabgp ${WRKSRC}/sbin/exabgp

post-install:
.for i in 1 5
	${INSTALL_MAN} ${WRKSRC}/doc/man/*.$i ${PREFIX}/man/man$i/
.endfor

.include <bsd.port.mk>
