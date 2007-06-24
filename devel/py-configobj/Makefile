# $OpenBSD: Makefile,v 1.1.1.1 2007/06/24 21:56:36 martynas Exp $

COMMENT=		"config file reader and writer"

DISTNAME=		configobj-4.4.0
PKGNAME=		py-${DISTNAME}

CATEGORIES=		devel lang/python

HOMEPAGE=		http://www.voidspace.org.uk/python/configobj.html

MAINTAINER=		Martynas Venckus <martynas@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=configobj/}
EXTRACT_SUFX=		.zip

MODULES=		lang/python

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-configobj
	cd ${WRKSRC}/docs && \
		find . -type d -exec ${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-configobj/{} \; && \
		find . ! -type d -exec ${INSTALL_DATA} {} ${PREFIX}/share/doc/py-configobj/{} \;

do-regress:
	cd ${WRKSRC} && ${MODPY_BIN} configobj_test.py -v

.include <bsd.port.mk>
