# $OpenBSD: Makefile,v 1.14 1999/05/30 23:49:12 brad Exp $
# $FreeBSD: Makefile,v 1.4 1997/12/01 16:50:49 pst Exp $

DISTNAME=	tcl8.0.5
PKGNAME=	tcl-8.0.5
CATEGORIES=	lang
MASTER_SITES=	${MASTER_SITE_TCLTK}
MASTER_SITE_SUBDIR= tcl8_0

NEED_VERSION=	1.92

MAINTAINER=	niklas@openbsd.org

SEPARATE_BUILD=	concurrent
WRKSRC=		${WRKDIR}/tcl8.0.5/unix
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

.if (${MACHINE_ARCH} == "mips")
CONFIGURE_ARGS+= --disable-load
.endif
CONFIGURE_ENV=  PORTSDIR=${PORTSDIR}

# internal compiler error
.if (${MACHINE_ARCH} == "m68k")
PATCH_LIST=patch-* sup-m68k
.endif

post-install:
	${LDCONFIG} -m ${PREFIX}/lib

test:
	@cd ${WRKSRC} && ${MAKE} test

.include <bsd.port.mk>
