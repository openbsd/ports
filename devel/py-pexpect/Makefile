# $OpenBSD: Makefile,v 1.16 2013/03/11 10:50:26 espie Exp $

COMMENT=	pure Python Expect-like module

MODPY_EGG_VERSION= 2.3
DISTNAME=	pexpect-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel

HOMEPAGE=	http://pexpect.sourceforge.net/

# Python 
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pexpect/}

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
