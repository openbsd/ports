# $OpenBSD: Makefile,v 1.24 2002/05/11 17:42:57 fgsch Exp $

COMMENT=	"MS-Windows 3.1/95/NT emulator for Unix (Alpha release)"

DATE= 		990225
DISTNAME= 	Wine-${DATE}
PKGNAME=	wine-${DATE}
CATEGORIES=	emulators x11
NEED_VERSION=	1.527

ONLY_FOR_ARCHS= i386

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.chg.ru/pub/gnu/ALPHA/wine/development/

USE_X11=	yes
CONFIGURE_STYLE=	gnu dest

WRKDIST=	${WRKDIR}/${PKGNAME}

.if !defined(NO_WARNINGS)
pre-fetch:
	@echo
	@echo "  WARNING: This application requires a kernel compiled with"
	@echo "           'option USER_LDT' for proper operation. The GENERIC"
	@echo "           kernel does not have this option enabled by default."
	@echo
.endif

post-configure:
	cd ${WRKSRC} && make depend

post-install:
	[ -f /etc/wine.conf ] || cp ${WRKSRC}/wine.ini /etc/wine.conf

.include <bsd.port.mk>
