# $OpenBSD: Makefile,v 1.1.1.1 2001/05/06 14:36:05 lebel Exp $

COMMENT=		"official distributed.net client"

V=			2.8010
SV=			463
PKGNAME=		dnetc-${V}.${SV}
DISTNAME=		dnetc${SV}-openbsd-x86-aout
CATEGORIES=		misc
NEED_VERSION=		1.402

HOMEPAGE=		http://www.distributed.net/

MASTER_SITES=		http.distributed.net:/pub/dcti/v${V}/

MAINTAINER=		David Lebel <lebel@openbsd.org>

ONLY_FOR_ARCHS=		i386

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	No

NO_BUILD=		Yes

WRKSRC=			${WRKDIR}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/dnetc ${PREFIX}/bin/
	${INSTALL_DATA} ${WRKSRC}/dnetc.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
