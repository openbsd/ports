# $OpenBSD: Makefile,v 1.4 2012/07/09 16:37:00 zinke Exp $

COMMENT=		simple X terminal

DISTNAME=		0.2.1
PKGNAME=		st-${DISTNAME}
DIST_SUBDIR=		st

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
WRKDIST=		${WRKDIR}/st-${DISTNAME}

NO_REGRESS=		Yes

.include <bsd.port.mk>
