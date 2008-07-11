# $OpenBSD: Makefile,v 1.6 2008/07/11 00:23:15 martynas Exp $

COMMENT=		tools for using web server gateway interface stack

MODPY_EGG_VERSION=	1.7.1
DISTNAME=		Paste-${MODPY_EGG_VERSION}
PKGNAME=		py-paste-${MODPY_EGG_VERSION}

CATEGORIES=		www

HOMEPAGE=		http://pythonpaste.org/

MAINTAINER=		Martynas Venckus <martynas@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://cheeseshop.python.org/packages/source/P/Paste/

MODULES=		lang/python
RUN_DEPENDS=		::www/py-flup
REGRESS_DEPENDS=	${RUN_DEPENDS} \
			::devel/py-py

MODPY_SETUPTOOLS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-paste
	cd ${WRKSRC}/docs && \
		find . -type d -exec ${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-paste/{} \; && \
		find . ! -type d -exec ${INSTALL_DATA} {} ${PREFIX}/share/doc/py-paste/{} \;

pre-regress:
	perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},g' \
		${WRKSRC}/tests/cgiapp_data/*.cgi

do-regress:
	cd ${WRKSRC} && py.test .

.include <bsd.port.mk>
