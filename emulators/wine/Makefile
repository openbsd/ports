# $OpenBSD: Makefile,v 1.6 1999/02/12 18:29:06 rohee Exp $
#

DATE			= 	990131
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
