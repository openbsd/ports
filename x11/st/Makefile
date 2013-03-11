# $OpenBSD: Makefile,v 1.7 2013/03/11 11:46:15 espie Exp $

COMMENT=		simple X terminal

DISTNAME=		0.3
PKGNAME=		st-${DISTNAME}
DIST_SUBDIR=		st

CATEGORIES=		x11

HOMEPAGE=		http://st.suckless.org/

MAINTAINER=		Joerg Zinke <zinke@openbsd.org>

# MIT/X Consortium License
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c util X11 Xext Xft fontconfig

MASTER_SITES=		http://hg.suckless.org/st/archive/

RUN_DEPENDS=		fonts/liberation-fonts

MAKE_ENV=		LDFLAGS="${LDFLAGS}"
FAKE_FLAGS=		DESTDIR=""
WRKDIST=		${WRKDIR}/st-${DISTNAME}

NO_TEST=		Yes

.include <bsd.port.mk>
