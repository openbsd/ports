# $OpenBSD: Makefile,v 1.19 2017/11/21 00:13:02 naddy Exp $

COMMENT=	open source COBOL compiler

DISTNAME=	open-cobol-1.1
SHARED_LIBS +=	cob                  3.0      # .2.0
CATEGORIES=	lang
REVISION=	1

HOMEPAGE=	http://www.opencobol.org/

# compiler: GPL
# run-time library: LGPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=  c db gmp iconv intl m ncurses

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=open-cobol/}

LIB_DEPENDS=	databases/db/v4 \
		devel/gettext \
	 	devel/gmp


AUTOCONF_VERSION=	2.59
CONFIGURE_STYLE=autoconf
CONFIGURE_ENV=  LDFLAGS="-L${LOCALBASE}/lib" \
		CFLAGS="-I${LOCALBASE}/include" \
		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/db4"

# Do not pick up kpathsea/getopt.h from print/texlive/base
CONFIGURE_ENV+=	ac_cv_header_kpathsea_getopt_h=no

.include <bsd.port.mk>
