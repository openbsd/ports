# $OpenBSD: Makefile,v 1.6 2001/04/18 23:24:51 avsm Exp $

COMMENT=		"lightweight, single-threaded HTTP/HTTPS load tester"

DISTNAME=		http_load_05apr2001
PKGNAME=		http_load-20010405
CATEGORIES=     	www benchmarks
NEED_VERSION=		1.401

HOMEPAGE=		http://www.acme.com/software/http_load/
MAINTAINER=		Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.acme.com/software/http_load/
WRKDIST=		${WRKDIR}/http_load

MAKE_FLAGS=		CC="${CC}" \
			CFLAGS='${CFLAGS} $$(SRANDOM_DEFS) $$(SSL_DEFS) $$(SSL_INC)'

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/http_load   ${PREFIX}/bin
	${INSTALL_MAN}     ${WRKSRC}/http_load.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
