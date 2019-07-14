# $OpenBSD: Makefile,v 1.5 2019/07/14 02:16:51 naddy Exp $

COMMENT =	Sun's official Java VM Specification, 2nd Ed.

VERSION =	2.0
PKGNAME =	JVMS-${VERSION}
DISTNAME =	vmspec
DISTFILES =	vmspec.2nded.html.tar.gz
CATEGORIES =	books

HOMEPAGE =	http://java.sun.com/docs/books/jvms/

# http://java.sun.com/docs/books/vmspec/2nd-edition/html/Copyright.doc.html
PERMIT_PACKAGE =	Copyright
PERMIT_DISTFILES =	Copyright

MASTER_SITES =	${HOMEPAGE}download/

NO_BUILD =	Yes
NO_TEST =	Yes
PKG_ARCH =	*

INSTALL_LOC =	${PREFIX}/share/doc/jvm

do-install:
	${INSTALL_DATA_DIR} ${INSTALL_LOC}
	cp -R ${WRKDIST}/* ${INSTALL_LOC}
	chown -R ${DOCOWN}:${DOCGRP} ${INSTALL_LOC}
	find ${INSTALL_LOC} -type f|xargs chmod ${DOCMODE}

.include <bsd.port.mk>
