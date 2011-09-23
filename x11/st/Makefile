# $OpenBSD: Makefile,v 1.2 2011/09/23 19:11:41 ajacoutot Exp $

COMMENT=		simple X terminal

DISTNAME=		st-0.1.1
DISTFILES=		0.1.1.tar.gz
DIST_SUBDIR=		st

REVISION=		0

CATEGORIES=		x11

HOMEPAGE=		http://st.suckless.org/

MAINTAINER=		Joerg Zinke <zinke@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 c util

MASTER_SITES=		http://hg.suckless.org/st/archive/

MAKE_ENV=		LDFLAGS="${LDFLAGS}"
FAKE_FLAGS=		DESTDIR=""

NO_REGRESS=		Yes

.include <bsd.port.mk>
