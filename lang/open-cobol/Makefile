# $OpenBSD: Makefile,v 1.1.1.1 2005/04/27 03:32:15 jcs Exp $

COMMENT=	"open source COBOL compiler"

DISTNAME=	open-cobol-0.31
CATEGORIES=	lang
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=open-cobol/}

HOMEPAGE=	http://open-cobol.sourceforge.net/

# gpl/lgpl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	ltdl.4::devel/libtool \
	 	gmp.6::devel/gmp

MODULES=	gettext

WANTLIB=	c m ncurses

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=  LDFLAGS="-L${LOCALBASE}/lib" \
		CFLAGS="-I${LOCALBASE}/include" \
		CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
