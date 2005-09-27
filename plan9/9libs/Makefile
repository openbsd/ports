# $OpenBSD: Makefile,v 1.6 2005/09/27 21:07:55 alek Exp $

COMMENT=		"Plan 9 compatibility libraries"

DISTNAME=		9libs-1.0
PKGNAME=		${DISTNAME}p3
CATEGORIES=		plan9 devel

HOMEPAGE=		http://www.netlib.org/research/9libs/

MAINTAINER=		rich cannings <cannings@cvs.openbsd.org>

# BSD licence
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE m X11 SM Xt

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
