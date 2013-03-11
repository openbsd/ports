# $OpenBSD: Makefile,v 1.18 2013/03/11 11:37:53 espie Exp $

# varargs misuse, and unportable software
ONLY_FOR_ARCHS= 	i386 sparc sparc64

COMMENT=		Plan 9 compatibility libraries

DISTNAME=		9libs-1.0
REVISION=		5
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

WANTLIB =		ICE SM X11 Xau Xdmcp Xt m pthread-stubs xcb

MASTER_SITES=		${HOMEPAGE}

SEPARATE_BUILD=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
USE_GROFF =		Yes
CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS+=        ${CONFIGURE_SHARED} \
			--includedir=${PREFIX}/include/9libs

# broken on colorinit() in test.c
TEST_IS_INTERACTIVE=	Yes
SETENV=			env
TEST_TARGET=		check


.include <bsd.port.mk>
