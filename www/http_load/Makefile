# $OpenBSD: Makefile,v 1.5 2000/11/18 23:15:38 avsm Exp $

DISTNAME=		http_load_09nov00
PKGNAME=		http_load-09nov00
CATEGORIES=     	www benchmarks
NEED_VERSION=		1.340

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
