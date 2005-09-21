# $OpenBSD: Makefile,v 1.1.1.1 2005/09/21 16:41:35 jolan Exp $
ONLY_FOR_ARCHS=	i386

COMMENT=	"flash support for opera"
DISTNAME=	flash-7.0r25
PKGNAME=	opera-flashplugin-7.0r25
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
		:redhat_motif-*:emulators/redhat/motif

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/opera/plugins
	${INSTALL_DATA} ${WRKSRC}/libflashplayer.so ${PREFIX}/lib/opera/plugins

.include <bsd.port.mk>
