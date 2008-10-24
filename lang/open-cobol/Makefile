# $OpenBSD: Makefile,v 1.6 2008/10/24 16:36:56 jasper Exp $

COMMENT=	open source COBOL compiler

DISTNAME=	open-cobol-1.0
SHARED_LIBS +=	cob                  3.0      # .2.0
CATEGORIES=	lang

HOMEPAGE=	http://www.opencobol.org/

# compiler: GPL
# run-time library: LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=open-cobol/}

LIB_DEPENDS=	db:db-4.*:databases/db/v4 \
	 	gmp.>=6::devel/gmp

MODULES=	devel/gettext
USE_LIBTOOL=	Yes

WANTLIB=	c m ncurses

AUTOCONF_VERSION=	2.59
CONFIGURE_STYLE=gnu autoconf
CONFIGURE_ENV=  LDFLAGS="-L${LOCALBASE}/lib" \
		CFLAGS="-I${LOCALBASE}/include" \
		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/db4"

.include <bsd.port.mk>
