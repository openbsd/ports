# $OpenBSD: Makefile,v 1.1.1.1 2015/11/27 12:16:05 sthen Exp $

COMMENT=	BGP route injector (supporting flow routes, etc)

MODPY_EGG_VERSION= 3.4.13
DISTNAME=	exabgp-${MODPY_EGG_VERSION}
DISTFILES=	${DISTNAME}{${MODPY_EGG_VERSION}}.tar.gz

CATEGORIES=	net

HOMEPAGE=	https://github.com/exa-networks/exabgp

# BSD
PERMIT_PACKAGE_CDROM=	 Yes

MASTER_SITES=	https://github.com/Exa-Networks/exabgp/archive/

MODULES=	lang/python
MODPY_SETUPTOOLS= Yes

pre-configure:
	${SUBST_CMD} -m 555 -c ${FILESDIR}/exabgp ${WRKSRC}/sbin/exabgp

post-install:
.for i in 1 5
	${INSTALL_MAN} ${WRKSRC}/doc/man/*.$i ${PREFIX}/man/man$i/
.endfor

.include <bsd.port.mk>
