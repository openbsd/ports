# $OpenBSD: Makefile,v 1.10 2009/03/23 21:45:03 jasper Exp $

COMMENT=		HTML form validation, generation, and conversion

MODPY_EGG_VERSION=	1.0.1
DISTNAME=		FormEncode-${MODPY_EGG_VERSION}
PKGNAME=		py-formencode-${MODPY_EGG_VERSION}p1

CATEGORIES=		www

HOMEPAGE=		http://www.formencode.org/

MAINTAINER=		Martynas Venckus <martynas@openbsd.org>

# PSF
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://cheeseshop.python.org/packages/source/F/FormEncode/

MODULES=		devel/gettext \
			lang/python

RUN_DEPENDS=		::devel/py-ruledispatch
REGRESS_DEPENDS=	::www/py-formencode \
			::devel/py-py \
			::devel/py-ruledispatch \
			::devel/py-nose

MODPY_SETUPTOOLS=	Yes

post-install:
	rm -f ${WRKSRC}/docs/test_docs.py{.orig,c}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-formencode
	${INSTALL_DATA} ${WRKSRC}/docs/* ${PREFIX}/share/doc/py-formencode/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-formencode
	cd ${WRKSRC}/examples && \
		find . -type d -exec ${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-formencode/{} \; && \
		find . ! -type d -exec ${INSTALL_DATA} {} ${PREFIX}/share/examples/py-formencode/{} \;

do-regress:
	cd ${WRKSRC} && py.test .

.include <bsd.port.mk>
