# $OpenBSD: Makefile,v 1.1.1.1 2003/05/11 08:24:29 cannings Exp $

COMMENT=		"Plan 9 compatability libraries"

VERSION=		1.0
DISTNAME=		9libs-${VERSION}
CATEGORIES=		plan9 devel

HOMEPAGE=		http://www.netlib.org/research/9libs/

MAINTAINER=		rich cannings <cannings@cvs.openbsd.org>

# BSD licence
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

SEPARATE_BUILD=		simple
USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS+=        ${CONFIGURE_SHARED}

# broken on colorinit() in test.c
REGRESSION_IS_INTERACTIVE=Yes
SETENV=			env
REGRESS_TARGET=		check


.include <bsd.port.mk>
