# $OpenBSD: Makefile,v 1.15 2013/03/11 11:20:28 espie Exp $

COMMENT=	open source COBOL compiler

DISTNAME=	open-cobol-1.1
SHARED_LIBS +=	cob                  3.0      # .2.0
CATEGORIES=	lang

HOMEPAGE=	http://www.opencobol.org/

# compiler: GPL
# run-time library: LGPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=open-cobol/}

LIB_DEPENDS=	databases/db/v4 \
	 	devel/gmp

MODULES=	devel/gettext
USE_LIBTOOL=	Yes

WANTLIB=	c db gmp m ncurses

AUTOCONF_VERSION=	2.59
CONFIGURE_STYLE=autoconf
CONFIGURE_ENV=  LDFLAGS="-L${LOCALBASE}/lib" \
		CFLAGS="-I${LOCALBASE}/include" \
		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/db4"

.include <bsd.port.mk>
