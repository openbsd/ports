# $OpenBSD: Makefile,v 1.11 2010/09/26 20:08:12 martynas Exp $
ONLY_FOR_ARCHS=	i386

COMMENT=	flash support for opera
DISTNAME=	install_flash_player_7_linux_r73
PKGNAME=	opera-flashplugin-7.0r73
CATEGORIES=	www
MASTER_SITES=	http://distfiles.nl/ \
		http://openbsddistfiles.com/jolan/

HOMEPAGE=	http://www.macromedia.com/

PERMIT_DISTFILES_CDROM=	Commercial software
PERMIT_DISTFILES_FTP=	Commercial software
PERMIT_PACKAGE_CDROM=	Commercial software
PERMIT_PACKAGE_FTP=	Commercial software

NO_BUILD=	Yes
NO_REGRESS=	Yes

RUN_DEPENDS=	:opera-*:www/opera

WRKSRC=	${WRKDIR}/install_flash_player_7_linux

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/opera/plugins
	${INSTALL_DATA} ${WRKSRC}/libflashplayer.so ${PREFIX}/lib/opera/plugins

.include <bsd.port.mk>
