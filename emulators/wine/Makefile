# $OpenBSD: Makefile,v 1.7 1999/02/27 15:28:35 rohee Exp $
#

DATE			= 	990225
DISTNAME		= 	Wine-${DATE}
PKGNAME			=	wine-${DATE}
CATEGORIES		=	emulators x11

ONLY_FOR_ARCHS		= 	i386

MAINTAINER		=	rohee@OpenBSD.ORG	# was todd@OpenBSD.ORG

MASTER_SITES		=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR	=	ALPHA/wine/development

USE_X11			=	yes
GNU_CONFIGURE		=	yes
CONFIGURE_ARGS		+=	--sysconfdir=/etc

WRKSRC			=	${WRKDIR}/${PKGNAME}

post-configure:
	cd ${WRKSRC} && make depend

post-install:
	[ -f /etc/wine.conf ] || ${CP} ${WRKSRC}/wine.ini /etc/wine.conf

.include <bsd.port.mk>
