# $OpenBSD: Makefile,v 1.25 2002/10/26 12:52:48 naddy Exp $

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
