# $OpenBSD: Makefile,v 1.2 2007/04/09 14:38:08 alek Exp $

COMMENT=		"DNS toolkit for Python"

DISTNAME=		dnspython-1.5.0
PKGNAME=		${DISTNAME:S/^/py-/}
CATEGORIES=		net

HOMEPAGE=		http://www.dnspython.org/

MAINTAINER=		Will Maier <willmaier@ml1.net>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}kits/stable/

MODULES=		lang/python

post-install:
	@perl -pi -e "s,/usr/bin/env python,${MODPY_BIN}," \
		${WRKSRC}/examples/*.py
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-dnspython
	${INSTALL_SCRIPT} ${WRKSRC}/examples/* \
		${PREFIX}/share/examples/py-dnspython

do-regress:
	@cd ${WRKSRC}/tests && env PYTHONPATH=../ \
		make check PYTHON=${MODPY_BIN} 

.include <bsd.port.mk>
