# $OpenBSD: Makefile,v 1.32 2007/09/16 00:45:14 merdely Exp $

COMMENT=	MS-Windows 3.1/95/NT emulator for Unix (Alpha release)

DATE= 		990225
DISTNAME= 	Wine-${DATE}
PKGNAME=	wine-${DATE}p0
CATEGORIES=	emulators x11

ONLY_FOR_ARCHS= i386

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE SM X11 Xext Xpm Xxf86dga Xxf86vm c m ncurses ossaudio

MASTER_SITES=	ftp://ftp.chg.ru/pub/gnu/ALPHA/wine/development/

USE_X11=	yes
CONFIGURE_STYLE=	gnu dest

# XXX partial citrus: no real wctype functions yet
#CONFIGURE_ENV+=ac_cv_header_wctype_h=no

WRKDIST=	${WRKDIR}/${DISTNAME:L}

NO_REGRESS=	Yes

post-configure:
	cd ${WRKSRC} && make depend

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/wine
	${INSTALL_DATA} ${WRKSRC}/wine.ini \
		${PREFIX}/share/examples/wine/wine.conf

.include <bsd.port.mk>
