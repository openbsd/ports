# $OpenBSD: Makefile,v 1.2 2001/06/25 12:44:32 lebel Exp $

COMMENT=	"front-end to external cd audio rippers and mp3 encoders"

V=			2.95
DISTNAME=		grip-${V}
PKGNAME=		${DISTNAME}p1
CATEGORIES=		audio
NEED_VERSION=		1.402
EXTRACT_SUFX=		.tgz

MAINTAINER=		David Lebel <lebel@openbsd.org>

HOMEPAGE=		http://www.nostatic.org/grip/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.nostatic.org/grip/

LIB_DEPENDS=		gtk.1.2::x11/gtk+
USE_GMAKE=		Yes

ALL_TARGET=		gripnopar gcd

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/grip ${PREFIX}/bin/	
	${INSTALL_PROGRAM} ${WRKSRC}/gcd ${PREFIX}/bin/	
	${INSTALL_DATA} ${WRKSRC}/grip.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
