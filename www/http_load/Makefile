# $OpenBSD: Makefile,v 1.1.1.1 2000/09/12 18:08:58 avsm Exp $

DISTNAME=		http_load
PKGNAME=		http_load-09jun00
CATEGORIES=     	www
NEED_VERSION=		1.328

HOMEPAGE=		http://www.acme.com/software/http_load/
MAINTAINER=		avsm@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.acme.com/software/http_load/
DISTFILES=		${DISTNAME}_09jun00${EXTRACT_SUFX}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/http_load   ${PREFIX}/bin
	${INSTALL_MAN}     ${WRKSRC}/http_load.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
