# $OpenBSD: Makefile,v 1.21 2004/02/05 23:29:34 xsa Exp $

COMMENT=		"C/C++ source code auditing tool"

DISTNAME=		flawfinder-1.24
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

MODULES=		python

NO_BUILD=		Yes
NO_REGRESS=		Yes

DOC_DIR=		${PREFIX}/share/doc/flawfinder

pre-build:
	@perl -pi -e \
		"s|/usr/bin/env python|${LOCALBASE}/bin/python${MODPY_VERSION}|" \
		${WRKSRC}/flawfinder

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/flawfinder.{pdf,ps} ${DOC_DIR}

.include <bsd.port.mk>
