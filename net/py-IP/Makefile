# $OpenBSD: Makefile,v 1.8 2004/07/26 21:04:24 xsa Exp $

COMMENT=	"Python module to handle IPv4 and IPv6 address"

VERSION=	0.41
DISTNAME=	IPy-${VERSION}
PKGNAME=	py-IP-${VERSION}
CATEGORIES=    	net

HOMEPAGE=	http://c0re.23.nu/c0de/IPy/

MAINTAINER=	Shell Hung <shell@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

MODULES=	python

MODPY_DISTUTILS_INSTALLARGS=	-O2

do-regress:
	@cd ${WRKSRC}/test; ${MODPY_BIN} ./test_IPy.py

.include <bsd.port.mk>
