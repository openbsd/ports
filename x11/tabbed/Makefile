# $OpenBSD: Makefile,v 1.1.1.1 2012/07/09 08:42:53 zinke Exp $

COMMENT=		simple generic tabbed frontend

DISTNAME=		tabbed-0.4

CATEGORIES=		x11

HOMEPAGE=		http://tools.suckless.org/tabbed

MAINTAINER=		Joerg Zinke <zinke@openbsd.org>

# MIT/X
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 c

MASTER_SITES=		http://dl.suckless.org/tools/

RUN_DEPENDS=		fonts/terminus-font

MAKE_FLAGS=		CC="${CC}"
MAKE_ENV=		LDFLAGS="${LDFLAGS}"
FAKE_FLAGS=		DESTDIR=""

NO_REGRESS=		Yes

.include <bsd.port.mk>
