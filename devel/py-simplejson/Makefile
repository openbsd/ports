# $OpenBSD: Makefile,v 1.5 2008/01/13 17:20:14 martynas Exp $

COMMENT=		JSON encoder/decoder

VERSION=		1.7.3
DISTNAME=		simplejson-${VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		devel

HOMEPAGE=		http://undefined.org/python/\#simplejson

MAINTAINER=		Martynas Venckus <martynas@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://cheeseshop.python.org/packages/source/s/simplejson/

MODULES=		lang/python
REGRESS_DEPENDS=	::devel/py-nose

SUBST_VARS=		VERSION

MODPY_SETUPTOOLS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-simplejson
	cd ${WRKSRC}/docs && \
		find . -type d -exec ${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-simplejson/{} \; && \
		find . ! -type d -exec ${INSTALL_DATA} {} ${PREFIX}/share/doc/py-simplejson/{} \;

.include <bsd.port.mk>
