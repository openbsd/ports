# $OpenBSD: Makefile,v 1.15 1999/11/30 02:15:10 brad Exp $
# $FreeBSD: Makefile,v 1.4 1997/12/01 16:50:49 pst Exp $

DISTNAME=	tcl8.0.5
PKGNAME=	tcl-8.0.5
CATEGORIES=	lang
MASTER_SITES=	${MASTER_SITE_TCLTK}
MASTER_SITE_SUBDIR= tcl8_0

NEED_VERSION=	1.92

MAINTAINER=	niklas@openbsd.org

SEPARATE_BUILD=	concurrent
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

.if (${MACHINE_ARCH} == "mips")
CONFIGURE_ARGS+= --disable-load
.endif
CONFIGURE_ENV=  PORTSDIR=${PORTSDIR}

WRKSRC=	${WRKDIR}/tcl8.0.5/unix

post-install:
	@${LDCONFIG} -m ${PREFIX}/lib

test:
	@cd ${WRKSRC} && make test

.include <bsd.port.mk>
