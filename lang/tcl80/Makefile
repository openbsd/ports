# $OpenBSD: Makefile,v 1.7 1999/01/11 01:21:18 marc Exp $
# $FreeBSD: Makefile,v 1.4 1997/12/01 16:50:49 pst Exp $
#

DISTNAME=	tcl8.0.4
PKGNAME=	tcl-8.0.4
CATEGORIES=	lang tcl80
MASTER_SITES=	ftp://ftp.scriptics.com/pub/tcl/tcl8_0/

MAINTAINER=	niklas@openbsd.org

WRKSRC=		${WRKDIR}/tcl8.0.4/unix
GNU_CONFIGURE=	yes
.if (${MACHINE_ARCH} != "alpha")
CONFIGURE_ARGS=	--enable-shared
.endif
.if (${MACHINE_ARCH} == "mips")
CONFIGURE_ARGS=	--disable-load
.endif
CONFIGURE_ENV=  PORTSDIR=${PORTSDIR}

post-install:
	${LDCONFIG} -m ${PREFIX}/lib

test:
	cd ${WRKSRC} && ${MAKE} test

.include <bsd.port.mk>
