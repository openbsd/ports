# $OpenBSD: Makefile,v 1.26 2006/06/03 09:37:09 alek Exp $

COMMENT=		"C/C++ source code auditing tool"

DISTNAME=		flawfinder-1.26
PKGNAME=		${DISTNAME}p0
CATEGORIES=		devel security

HOMEPAGE=		http://www.dwheeler.com/flawfinder/

MAINTAINER=		Jason Peel <jsyn@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE} \
			${MASTER_SITE_PACKETSTORM:=UNIX/security/}

MODULES=		lang/python

NO_BUILD=		Yes
NO_REGRESS=		Yes
PKG_ARCH=		*

DOC_DIR=		${PREFIX}/share/doc/flawfinder

do-configure:
	@perl -pi -e \
		"s|/usr/bin/env python|${LOCALBASE}/bin/python${MODPY_VERSION}|" \
		${WRKSRC}/flawfinder

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/flawfinder ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/flawfinder.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/flawfinder.{pdf,ps} ${DOC_DIR}

.include <bsd.port.mk>
