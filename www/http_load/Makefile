# $OpenBSD: Makefile,v 1.4 2000/09/29 15:13:24 avsm Exp $

DISTNAME=		http_load_17sep00
PKGNAME=		http_load-17sep00
CATEGORIES=     	www benchmarks
NEED_VERSION=		1.336

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
