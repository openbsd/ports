# $OpenBSD: Makefile,v 1.2 2013/04/27 15:11:57 jasper Exp $

COMMENT=	curses GDB interface
DISTNAME=	cgdb-0.6.7
REVISION=	0
CATEGORIES=	devel
HOMEPAGE=	http://cgdb.me/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ereadline m ncurses

MASTER_SITES=	http://cgdb.me/files/

LIB_DEPENDS=	devel/readline>=6.1p2

CONFIGURE_STYLE=  autoconf
AUTOCONF_VERSION= 2.69
CONFIGURE_ARGS+=  --with-readline=yes

CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include"

# there are tests, but not working yet
NO_TEST=	Yes

.include <bsd.port.mk>
