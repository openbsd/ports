# $OpenBSD: Makefile,v 1.12 2006/06/17 12:11:33 naddy Exp $

ONLY_FOR_ARCHS=		i386 m68k sparc

COMMENT=		"official distributed.net client"

A-i386=			x86-elf
V-i386=			2.9008
SV-i386=		491

A-m68k=			m68k
V-m68k=			2.9005
SV-m68k=		483

A-sparc=		sparc-aout
V-sparc=		2.9002
SV-sparc=		479

DISTFILES=
.for m in ${ONLY_FOR_ARCHS}
.  if ${MACHINE_ARCH} == "$m"
A=			${A-$m}
V=			${V-$m}
SV=			${SV-$m}
DISTFILES+=		dnetc${SV}-openbsd-${A}${EXTRACT_SUFX}
.  else
SUPDISTFILES+=		dnetc${SV-$m}-openbsd-${A-$m}${EXTRACT_SUFX}
.  endif
.endfor

PKGNAME=		dnetc-${V}.${SV}
DISTNAME=              	dnetc${SV}-openbsd-${A}

CATEGORIES=		misc

HOMEPAGE=		http://www.distributed.net/

MASTER_SITES=		http://http.distributed.net/pub/dcti/v${V}/

MAINTAINER=		Sico Bruins <openbsd@msh.xs4all.nl>

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
