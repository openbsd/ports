# $OpenBSD: Makefile,v 1.1.1.1 2007/06/24 21:54:42 martynas Exp $

COMMENT=		"libraries for WSGI development"

V=			0.7
DISTNAME=		WSGIUtils-${V}
PKGNAME=		py-wsgiutils-${V}

CATEGORIES=		devel textproc www lang/python

HOMEPAGE=		http://www.owlfish.com/software/wsgiutils/

MAINTAINER=		Martynas Venckus <martynas@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.owlfish.com/software/wsgiutils/downloads/

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

# make regress happy after fake
post-install:
	rm -fr ${WRKSRC}/lib/WSGIUtils.egg-info
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-wsgiutils
	cd ${WRKSRC}/documentation && \
		find . -type d -exec ${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-wsgiutils/{} \; && \
		find . ! -type d -exec ${INSTALL_DATA} {} ${PREFIX}/share/doc/py-wsgiutils/{} \;
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-wsgiutils
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/py-wsgiutils/

do-regress:
	cd ${WRKSRC} && ${MODPY_BIN} runtests.py

.include <bsd.port.mk>
