# $OpenBSD: Makefile,v 1.4 2002/10/27 21:07:53 naddy Exp $

COMMENT=		"official distributed.net client"

.if ${MACHINE_ARCH:L} == "i386"
V=			2.8010
SV=			463
A=			x86-aout
.endif

.if ${MACHINE_ARCH:L} == "sparc"
V=			2.8015
SV=			469
A=			sparc-aout
.endif

PKGNAME=		dnetc-${V}.${SV}
DISTNAME=		dnetc${SV}-openbsd-${A}
CATEGORIES=		misc

HOMEPAGE=		http://www.distributed.net/

MASTER_SITES=		http://http.distributed.net/pub/dcti/v${V}/

MAINTAINER=		David Lebel <lebel@openbsd.org>

ONLY_FOR_ARCHS=		i386 sparc

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	No

NO_BUILD=		Yes
NO_REGRESS=		Yes

WRKSRC=			${WRKDIR}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/dnetc ${PREFIX}/bin/
	${INSTALL_DATA} ${WRKSRC}/dnetc.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
