# $OpenBSD: Makefile,v 1.5 2003/07/31 19:11:59 sturm Exp $

COMMENT=	"python module to handle IPv4 and IPv6 address"

VERSION=	0.41
DISTNAME=	IPy-${VERSION}
PKGNAME=	py-IP-${VERSION}
CATEGORIES=    	net

HOMEPAGE=	http://c0re.jp:80/c0de/IPy/
MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	Shell Hung <shell@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	python

MODPY_VERSION=	2.1
MODPY_DISTUTILS_INSTALLARGS=	-O2

do-regress:
	@cd ${WRKSRC}/test; ${MODPY_BIN} ./test_IPy.py

.include <bsd.port.mk>
