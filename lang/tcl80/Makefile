# $OpenBSD: Makefile,v 1.12 1999/03/19 20:38:20 brad Exp $
# $FreeBSD: Makefile,v 1.4 1997/12/01 16:50:49 pst Exp $

DISTNAME=	tcl8.0.5
PKGNAME=	tcl-8.0.5
CATEGORIES=	lang tcl80

NEED_VERSION=	1.73

MAINTAINER=	niklas@openbsd.org

MASTER_SITES=	ftp://ftp.scriptics.com/pub/tcl/tcl8_0/

SEPARATE_BUILD=	concurrent
WRKSRC=		${WRKDIR}/tcl8.0.5/unix
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=${CONFIGURE_SHARED}
.if (${MACHINE_ARCH} == "mips")
CONFIGURE_ARGS+=--disable-load
.endif
CONFIGURE_ENV=  PORTSDIR=${PORTSDIR}

post-install:
	${LDCONFIG} -m ${PREFIX}/lib

test:
	cd ${WRKSRC} && ${MAKE} test

.include <bsd.port.mk>
