# $OpenBSD: Makefile,v 1.2 2001/04/14 16:26:22 lebel Exp $

COMMENT=		"create fonts.scale file for the TrueType font server"

PKGNAME=		ttmkfdir-0.0
DISTNAME=		ttmkfdir
HOMEPAGE=		http://www.joerg-pommnitz.de/TrueType/xfsft.html

CATEGORIES=		x11
NEED_VERSION=		1.364
MAINTAINER=		David Lebel <lebel@openbsd.org>

MASTER_SITES=		http://www.joerg-pommnitz.de/TrueType/

LIB_DEPENDS=		ttf.1.::print/freetype

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKSRC=			${WRKDIR}

do-build:
	cd ${WRKSRC}; ${CC} ${CFLAGS} ttmkfdir.c \
	-I${LOCALBASE}/include -I${LOCALBASE}/include/freetype \
	-L${LOCALBASE}/lib -o ttmkfdir -lttf

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ttmkfdir ${PREFIX}/bin/ttmkfdir
	
.include <bsd.port.mk>
