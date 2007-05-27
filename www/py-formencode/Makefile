# $OpenBSD: Makefile,v 1.1.1.1 2007/05/27 15:07:27 martynas Exp $

COMMENT=		"HTML form validation, generation, and conversion"

V=			0.7.1
DISTNAME=		FormEncode-${V}
PKGNAME=		py-formencode-${V}

CATEGORIES=		www lang/python

HOMEPAGE=		http://www.formencode.org/

MAINTAINER=		Martynas Venckus <martynas@openbsd.org>

# PSF
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://cheeseshop.python.org/packages/source/F/FormEncode/

MODULES=		devel/gettext lang/python
RUN_DEPENDS=		::textproc/py-ElementTree

# Regression tests are deprecated
NO_REGRESS=		Yes

MODPY_SETUPTOOLS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-formencode
	${INSTALL_DATA} ${WRKSRC}/docs/* ${PREFIX}/share/doc/py-formencode/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-formencode
	cd ${WRKSRC}/examples && \
		find . -type d -exec ${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-formencode/{} \; && \
		find . ! -type d -exec ${INSTALL_DATA} {} ${PREFIX}/share/examples/py-formencode/{} \;

.include <bsd.port.mk>
