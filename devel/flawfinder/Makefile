# $OpenBSD: Makefile,v 1.2 2001/06/01 09:09:24 shell Exp $

COMMENT=		"c/c++ source code auditing tool"

DISTNAME=		flawfinder-0.12	
CATEGORIES=    		devel security
NEED_VERSION=		1.413	

HOMEPAGE=		http://www.dwheeler.com/flawfinder/

MAINTAINER=		Jason Peel <jsyn@nthought.com>

PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.dwheeler.com/flawfinder/	

RUN_DEPENDS=		python2.0::lang/python

NO_BUILD=		Yes

post-patch:
	@perl -pi.orig -e 's|/usr/bin/env |${LOCALBASE}/bin/|' \
		${WRKSRC}/flawfinder

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/flawfinder ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/flawfinder.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
