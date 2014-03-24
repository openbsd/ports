# $OpenBSD: Makefile,v 1.3 2014/03/24 09:08:46 espie Exp $

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
		CPPFLAGS="-I${LOCALBASE}/include/ereadline -I${LOCALBASE}/include"

# there are tests, but not working yet
NO_TEST=	Yes

.include <bsd.port.mk>
