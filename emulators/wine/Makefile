# $OpenBSD: Makefile,v 1.5 1998/10/18 05:02:07 marc Exp $
#

DATE=		980628
DISTNAME=	Wine-${DATE}
PKGNAME=	wine-98.06.28
CATEGORIES=	emulators x11

#BROKEN=	"newer version available"
ONLY_FOR_ARCHS= i386

MAINTAINER=	todd@OpenBSD.ORG

MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	ALPHA/wine/development

GNU_CONFIGURE=	yes

WRKSRC=		${WRKDIR}/wine-${DATE}

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
