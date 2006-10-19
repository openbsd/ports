# $OpenBSD: Makefile,v 1.5 2006/10/19 00:21:29 sturm Exp $
ONLY_FOR_ARCHS=	i386

COMMENT=	"flash support for opera"
DISTNAME=	flash-7.0r68
PKGNAME=	opera-flashplugin-7.0r68p0
CATEGORIES=	www
MASTER_SITES=	http://mirrors.protection.cx/~jolan/

HOMEPAGE=	http://www.macromedia.com/

PERMIT_DISTFILES_CDROM=	"Commercial software"
PERMIT_DISTFILES_FTP=	"Commercial software"
PERMIT_PACKAGE_CDROM=	"Commercial software"
PERMIT_PACKAGE_FTP=	"Commercial software"

NO_BUILD=	Yes
NO_REGRESS=	Yes

RUN_DEPENDS=	:opera-*:www/opera \
		:fedora_motif-*:emulators/fedora/motif

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/opera/plugins
	${INSTALL_DATA} ${WRKSRC}/libflashplayer.so ${PREFIX}/lib/opera/plugins

.include <bsd.port.mk>
