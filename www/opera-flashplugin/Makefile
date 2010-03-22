# $OpenBSD: Makefile,v 1.8 2010/03/22 16:37:52 jasper Exp $
ONLY_FOR_ARCHS=	i386

COMMENT=	flash support for opera
DISTNAME=	flash-7.0r68
PKGNAME=	opera-flashplugin-7.0r68p1
CATEGORIES=	www
MASTER_SITES=	http://openbsddistfiles.org/jolan/

HOMEPAGE=	http://www.macromedia.com/

PERMIT_DISTFILES_CDROM=	Commercial software
PERMIT_DISTFILES_FTP=	Commercial software
PERMIT_PACKAGE_CDROM=	Commercial software
PERMIT_PACKAGE_FTP=	Commercial software

NO_BUILD=	Yes
NO_REGRESS=	Yes

RUN_DEPENDS=	:opera-*:www/opera

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/opera/plugins
	${INSTALL_DATA} ${WRKSRC}/libflashplayer.so ${PREFIX}/lib/opera/plugins

.include <bsd.port.mk>
