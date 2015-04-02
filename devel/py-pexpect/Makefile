# $OpenBSD: Makefile,v 1.18 2015/04/02 14:21:15 jasper Exp $

COMMENT=	pure Python Expect-like module

MODPY_EGG_VERSION= 2.4
DISTNAME=	pexpect-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel

HOMEPAGE=	http://pexpect.sourceforge.net/

# Python 
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =          Yes

MODULES=	lang/python

EXAMPLESDIR=	${PREFIX}/share/examples/py-pexpect
DOCDIR=		${PREFIX}/share/doc/py-pexpect

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/{ANSI,FSM,screen}.py ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/* ${EXAMPLESDIR}
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/* ${DOCDIR}

.include <bsd.port.mk>
