# $OpenBSD: Makefile,v 1.7 2004/01/25 16:46:30 sturm Exp $

COMMENT=	"python module to handle IPv4 and IPv6 address"

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
