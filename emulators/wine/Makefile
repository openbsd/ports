# New ports collection makefile for:    wine
# Version required:     971116
# Date created:         17 Nov 1997
# Whom:			todd@OpenBSD.org
#

DATE=		971116
DISTNAME=	Wine-${DATE}
PKGNAME=	wine-97.11.16
CATEGORIES=	emulators x11
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	ALPHA/wine/development
ONLY_FOR_ARCHS= i386

MAINTAINER=	todd@OpenBSD.ORG

OS_RELEASE!=	uname -r
OS_HAS_XPM=	2.3
.if ( ${OS_RELEASE} < ${OS_HAS_XPM} )
LIB_DEPENDS=	Xpm\\.4\\.:${PORTSDIR}/graphics/xpm
.endif

WRKSRC=		${WRKDIR}/wine${DATE}
GNU_CONFIGURE=	yes
MAN1=		wine.1

pre-configure:
	@${ECHO} "WINE_INI_GLOBAL \"${PREFIX}/etc/wine.conf\"" \
		>> ${WRKSRC}/autoconf.h

post-configure:
		cd ${WRKSRC} && make depend

do-install:
	${INSTALL} -c ${WRKSRC}/wine ${PREFIX}/bin
	-@${MKDIR} ${PREFIX}/etc 2>/dev/null
	[ -f ${PREFIX}/etc/wine.conf ] \
		|| ${CP} ${WRKSRC}/wine.ini ${PREFIX}/etc/wine.conf
	${CP} ${WRKSRC}/wine.sym ${PREFIX}/etc
	${CP} ${WRKSRC}/documentation/wine.man ${PREFIX}/man/man1/wine.1

.include <bsd.port.mk>
