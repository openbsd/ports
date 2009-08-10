# $OpenBSD: Makefile,v 1.11 2009/08/10 06:33:44 kili Exp $

.if ${MACHINE_ARCH} != "i386" && ${MACHINE_ARCH} != "sparc" && \
    ${MACHINE_ARCH} != "sparc64"
BROKEN=			varargs misuse, and unportable software
.endif

COMMENT=		Plan 9 compatibility libraries

DISTNAME=		9libs-1.0
PKGNAME=		${DISTNAME}p5
CATEGORIES=		plan9 devel
SHARED_LIBS=		Xg	0.0 \
			frame	0.0 \
			plan9c	0.0
MODGNU_SHARED_LIBS=	Xg	'' \
			frame	'' \
			plan9c	''

HOMEPAGE=		http://www.netlib.org/research/9libs/

MAINTAINER=		rich cannings <cannings@cvs.openbsd.org>

# BSD licence
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB =		ICE SM X11 Xau Xdmcp Xt m pthread-stubs xcb

MASTER_SITES=		${HOMEPAGE}

SEPARATE_BUILD=		simple
USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS+=        ${CONFIGURE_SHARED} \
			--includedir=${PREFIX}/include/9libs

# broken on colorinit() in test.c
REGRESSION_IS_INTERACTIVE=Yes
SETENV=			env
REGRESS_TARGET=		check


.include <bsd.port.mk>
