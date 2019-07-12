# $OpenBSD: Makefile,v 1.5 2019/07/12 20:47:54 sthen Exp $

COMMENT=		simple plaintext presentation tool

DISTNAME=		sent-1

CATEGORIES=		misc productivity

HOMEPAGE=		http://tools.suckless.org/sent

MAINTAINER =		Brian Callahan <bcallah@openbsd.org>

# MIT/X
PERMIT_PACKAGE=	Yes

WANTLIB=		X11 Xft c fontconfig m

MASTER_SITES=		http://dl.suckless.org/tools/

RUN_DEPENDS=		archivers/bzip2 \
			graphics/farbfeld

MAKE_FLAGS=		CC="${CC}"
MAKE_ENV=		LDFLAGS="${LDFLAGS}"
FAKE_FLAGS=		DESTDIR=""

NO_TEST=		Yes

WRKDIST =		${WRKDIR}

.include <bsd.port.mk>
