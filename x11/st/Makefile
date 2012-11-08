# $OpenBSD: Makefile,v 1.6 2012/11/08 20:27:54 gonzalo Exp $

COMMENT=		simple X terminal

DISTNAME=		0.3
PKGNAME=		st-${DISTNAME}
DIST_SUBDIR=		st

CATEGORIES=		x11

HOMEPAGE=		http://st.suckless.org/

MAINTAINER=		Joerg Zinke <zinke@openbsd.org>

# MIT/X Consortium License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c util X11 Xext Xft fontconfig

MASTER_SITES=		http://hg.suckless.org/st/archive/

RUN_DEPENDS=		fonts/liberation-fonts

MAKE_ENV=		LDFLAGS="${LDFLAGS}"
FAKE_FLAGS=		DESTDIR=""
WRKDIST=		${WRKDIR}/st-${DISTNAME}

NO_REGRESS=		Yes

.include <bsd.port.mk>
