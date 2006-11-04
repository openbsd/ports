# $OpenBSD: Makefile,v 1.4 2006/11/04 12:52:06 kili Exp $

COMMENT=	"open source COBOL compiler"

DISTNAME=	open-cobol-0.32
SHARED_LIBS +=	cob                  2.0      # .1.0
CATEGORIES=	lang

HOMEPAGE=	http://open-cobol.sourceforge.net/

# gpl/lgpl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=open-cobol/}

LIB_DEPENDS=	ltdl.>=4::devel/libtool \
	 	gmp.>=6::devel/gmp

MODULES=	devel/gettext
USE_LIBTOOL=	Yes

WANTLIB=	c m ncurses

AUTOCONF_VERSION=	2.59
CONFIGURE_STYLE=gnu autoconf
CONFIGURE_ENV=  LDFLAGS="-L${LOCALBASE}/lib" \
		CFLAGS="-I${LOCALBASE}/include" \
		CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
