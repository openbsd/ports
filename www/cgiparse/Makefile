# $OpenBSD: Makefile,v 1.14 2001/05/06 04:22:47 lebel Exp $

COMMENT=	"C library to parse CGI Forms"

DISTNAME=	cgiparse-0.8e
CATEGORIES=	www
NEED_VERSION=	1.402

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
