# $OpenBSD: Makefile,v 1.22 2001/07/20 23:52:48 rohee Exp $

COMMENT=	"MS-Windows 3.1/95/NT emulator for Unix (Alpha release)"

DATE= 		990225
DISTNAME= 	Wine-${DATE}
PKGNAME=	wine-${DATE}
CATEGORIES=	emulators x11
NEED_VERSION=	1.402
FAKE=No

ONLY_FOR_ARCHS= i386

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	ALPHA/wine/development

USE_X11	=	yes
CONFIGURE_STYLE=	gnu

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
