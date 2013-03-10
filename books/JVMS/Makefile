# $OpenBSD: Makefile,v 1.3 2013/03/10 23:04:44 espie Exp $

COMMENT =	Sun's official Java VM Specification, 2nd Ed.

VERSION =	2.0
PKGNAME =	JVMS-${VERSION}
DISTNAME =	vmspec
DISTFILES =	vmspec.2nded.html.tar.gz
CATEGORIES =	books

HOMEPAGE =	http://java.sun.com/docs/books/jvms/

# http://java.sun.com/docs/books/vmspec/2nd-edition/html/Copyright.doc.html
PERMIT_PACKAGE_CDROM =	Copyright
PERMIT_PACKAGE_FTP =	Copyright
PERMIT_DISTFILES_FTP =	Copyright

MASTER_SITES =	${HOMEPAGE}download/

NO_BUILD =	Yes
NO_TEST =	Yes
PKG_ARCH =	*

INSTALL_LOC =	${PREFIX}/share/doc/jvm

do-install:
	${INSTALL_DATA_DIR} ${INSTALL_LOC}
	cp -R ${WRKDIST}/* ${INSTALL_LOC}
	chown -R ${DOCOWN}:${DOCGRP} ${INSTALL_LOC}
	chmod -R ${DOCMODE} ${INSTALL_LOC}

.include <bsd.port.mk>
