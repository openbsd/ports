# $OpenBSD: Makefile,v 1.3 2006/01/13 23:40:23 espie Exp $

COMMENT=		"wrapper class around the pcre library"

DISTNAME=		pcre++-0.9.5
PKGNAME=		${DISTNAME}p1
SHARED_LIBS=		pcre++ 1.0
MODGNU_SHARED_LIBS=	pcre++ ''
LIBpcre++_ALIAS=	pcre__

CATEGORIES=		devel
HOMEPAGE=		http://www.daemon.de/PCRE

MASTER_SITES=		ftp://ftp.daemon.de/scip/Apps/pcre++/

MAINTAINER=		Tomasz Bak <openbsdpl@wp.pl>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=		pcre.0::devel/pcre

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}
CONFIGURE_ENV=          CPPFLAGS="-I${LOCALBASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib"

USE_GMAKE=      	Yes
USE_LIBTOOL=		Yes

do-regress:
	@cd ${WRKBUILD}/test && ./test testinput

.include <bsd.port.mk>
