# $OpenBSD: Makefile,v 1.13 2000/07/03 22:49:31 krw Exp $

DISTNAME=	cgiparse-0.8e
CATEGORIES=	www
NEED_VERSION=	1.310

MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://resnet.uoregon.edu/~gurney_j/	\
		http://d182-89.uoregon.edu/~jmg/
FAKE_FLAGS=	PREFIX=${PREFIX} MANDIR=${PREFIX}/man/cat

.if $(MACHINE_ARCH) == "alpha"
BROKEN=		"Alpha architecture not yet supported"
.elif ${MACHINE_ARCH} == "mips"
PLIST=${PKGDIR}/PLIST.mips
.endif

.include <bsd.port.mk>
