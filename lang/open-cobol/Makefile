# $OpenBSD: Makefile,v 1.2 2006/01/02 21:49:23 alek Exp $

COMMENT=	"open source COBOL compiler"

DISTNAME=	open-cobol-0.31
PKGNAME=	${DISTNAME}p0
SHARED_LIBS=	cob 1.0
MODGNU_SHARED_LIBS=	cob '-no-undefined'
CATEGORIES=	lang

HOMEPAGE=	http://open-cobol.sourceforge.net/

# gpl/lgpl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=open-cobol/}

LIB_DEPENDS=	ltdl.4::devel/libtool \
	 	gmp.6::devel/gmp

MODULES=	gettext
USE_LIBTOOL=	Yes

WANTLIB=	c m ncurses

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=  LDFLAGS="-L${LOCALBASE}/lib" \
		CFLAGS="-I${LOCALBASE}/include" \
		CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
