# $OpenBSD: Makefile,v 1.6 2003/07/10 15:40:23 lebel Exp $

COMMENT=		"official distributed.net client"

.if ${MACHINE_ARCH:L} == "m68k"
A=			m68k
V=			2.9005
SV=			483
.endif
.if ${MACHINE_ARCH:L} == "i386"
A=			x86-aout
V=			2.9005
SV=			484
.endif
.if ${MACHINE_ARCH:L} == "sparc"
A=			sparc-aout
V=			2.9002
SV=			479
.endif

PKGNAME=		dnetc-${V}.${SV}
DISTNAME=		dnetc${SV}-openbsd-${A}
CATEGORIES=		misc

HOMEPAGE=		http://www.distributed.net/

MASTER_SITES=		http://http.distributed.net/pub/dcti/v${V}/

MAINTAINER=		David Lebel <lebel@openbsd.org>

ONLY_FOR_ARCHS=		i386 sparc m68k

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
