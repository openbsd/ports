# $OpenBSD: Makefile,v 1.10 2004/12/04 15:32:24 sturm Exp $

COMMENT=		"official distributed.net client"

.if ${MACHINE_ARCH:L} == "m68k"
A=			m68k
V=			2.9005
SV=			483
.endif
.if ${MACHINE_ARCH:L} == "i386"
A=			x86-elf
V=			2.9008
SV=			491
.endif
.if ${MACHINE_ARCH:L} == "sparc"
A=			sparc-aout
V=			2.9002
SV=			479
.endif

PKGNAME=		dnetc-${V}.${SV}
DISTNAME=              	dnetc${SV}-openbsd-${A}

CATEGORIES=		misc

HOMEPAGE=		http://www.distributed.net/

MASTER_SITES=		http://http.distributed.net/pub/dcti/v${V}/

MAINTAINER=		Sico Bruins <openbsd@msh.xs4all.nl>

ONLY_FOR_ARCHS=		i386 sparc m68k

PERMIT_PACKAGE_CDROM=	"no redistribution"
PERMIT_PACKAGE_FTP=	"no redistribution"
PERMIT_DISTFILES_CDROM=	"no redistribution"
PERMIT_DISTFILES_FTP=	"no redistribution"

NO_BUILD=		Yes
NO_REGRESS=		Yes

WRKSRC=			${WRKDIR}/dnetc${SV}-openbsd-${A}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/dnetc ${PREFIX}/bin/
	${INSTALL_DATA} ${WRKSRC}/dnetc.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
