# $OpenBSD: Makefile,v 1.26 2003/03/30 12:27:55 miod Exp $

COMMENT=	"MS-Windows 3.1/95/NT emulator for Unix (Alpha release)"

DATE= 		990225
DISTNAME= 	Wine-${DATE}
PKGNAME=	wine-${DATE}
CATEGORIES=	emulators x11

ONLY_FOR_ARCHS= i386

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.chg.ru/pub/gnu/ALPHA/wine/development/

USE_X11=	yes
CONFIGURE_STYLE=	gnu dest

WRKDIST=	${WRKDIR}/${PKGNAME}

NO_REGRESS=	Yes

post-configure:
	cd ${WRKSRC} && make depend

post-install:
	[ -f /etc/wine.conf ] || cp ${WRKSRC}/wine.ini /etc/wine.conf

.include <bsd.port.mk>
