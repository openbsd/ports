# $OpenBSD: Makefile,v 1.9 1999/10/27 19:46:03 fgsch Exp $

DATE= 		990225
DISTNAME= 	Wine-${DATE}
PKGNAME=	wine-${DATE}
CATEGORIES=	emulators x11

NEED_VERSION= 1.73

ONLY_FOR_ARCHS= i386

MAINTAINER=	rohee@OpenBSD.ORG

MASTER_SITES=		${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	ALPHA/wine/development

USE_X11	=	yes
GNU_CONFIGURE=	yes

BROKEN=		"build fails on msdos/dpmi.c"

WRKSRC=	${WRKDIR}/${PKGNAME}

post-configure:
	cd ${WRKSRC} && make depend

post-install:
	[ -f /etc/wine.conf ] || ${CP} ${WRKSRC}/wine.ini /etc/wine.conf

.include <bsd.port.mk>
