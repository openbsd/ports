# $OpenBSD: Makefile,v 1.11 1999/03/15 02:45:58 espie Exp $
# $FreeBSD: Makefile,v 1.4 1997/12/01 16:50:49 pst Exp $
#

DISTNAME=	tcl8.0.4
PKGNAME=	tcl-8.0.4
CATEGORIES=	lang tcl80

NEED_VERSION=	1.73

MAINTAINER=	niklas@openbsd.org

MASTER_SITES=	ftp://ftp.scriptics.com/pub/tcl/tcl8_0/

SEPARATE_BUILD=concurrent
WRKSRC=		${WRKDIR}/tcl8.0.4/unix
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
