# $OpenBSD: Makefile,v 1.5 2002/12/04 20:16:16 lebel Exp $

COMMENT=		"official distributed.net client"

V=			2.9001
SV=			478

.if ${MACHINE_ARCH:L} == "i386"
A=			x86-aout
.endif
.if ${MACHINE_ARCH:L} == "sparc"
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

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/dnetc ${PREFIX}/bin/
	${INSTALL_DATA} ${WRKSRC}/dnetc.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
