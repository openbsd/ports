# $OpenBSD: Makefile,v 1.5 2002/08/09 23:45:35 naddy Exp $
# $FreeBSD: ports/www/linux-flashplugin/Makefile,v 1.9 2001/07/21 14:27:22 okazaki Exp $

ONLY_FOR_ARCHS=	i386

COMMENT=	"Macromedia Flash Player, Netscape plugin"

VERSION=	5.0r50
PKGNAME=	flashplugin-${VERSION}
DISTNAME=	flash_linux
CATEGORIES=	www

HOMEPAGE=	http://www.macromedia.com/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	"redistribution not allowed"
PERMIT_PACKAGE_FTP=	"redistribution not allowed"
PERMIT_DISTFILES_CDROM=	"redistribution not allowed"
PERMIT_DISTFILES_FTP=	"redistribution not allowed"

MASTER_SITES=	http://download.macromedia.com/pub/shockwave/flash/english/linux/${VERSION}/
DIST_SUBDIR=	flashplugin-${VERSION}

RUN_DEPENDS=	:redhat_base->=6.2p1:emulators/redhat/base

NO_BUILD=	Yes
NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/ns-plugins
	${INSTALL_DATA} ${WRKSRC}/libflashplayer.so ${PREFIX}/lib/ns-plugins
	${INSTALL_DATA} ${WRKSRC}/ShockwaveFlash.class ${PREFIX}/lib/ns-plugins

.include <bsd.port.mk>
