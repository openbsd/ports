# $OpenBSD: Makefile,v 1.2 2009/01/30 20:26:17 naddy Exp $

COMMENT=	curses-based 3270 terminal editor

V=		c3270-3.3.8
DISTNAME=	${V}p3
PKGNAME=	${V}pl3
EXTRACT_SUFX=	.tgz
CATEGORIES=	comms

HOMEPAGE=	http://x3270.bgp.nu/

MAINTAINER=	Jeremy Evans <openbsd@jeremyevans.net>

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto ssl ncurses readline util

MODULES=                converters/libiconv

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=x3270/}	

WRKDIST=		${WRKDIR}/c3270-3.3
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

NO_REGRESS=		Yes

.include <bsd.port.mk>
