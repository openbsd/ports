# $OpenBSD: Makefile,v 1.13 2000/02/12 06:29:52 turan Exp $

DATE= 		990225
DISTNAME= 	Wine-${DATE}
PKGNAME=	wine-${DATE}
CATEGORIES=	emulators x11

NEED_VERSION=	1.191

ONLY_FOR_ARCHS= i386

MAINTAINER=	rohee@OpenBSD.ORG

LICENSE_TYPE=		BSD
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

MASTER_SITES=		${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	ALPHA/wine/development

USE_X11	=	yes
GNU_CONFIGURE=	yes

WRKDIST=	${WRKDIR}/${PKGNAME}

post-configure:
	cd ${WRKSRC} && make depend

post-install:
	[ -f /etc/wine.conf ] || ${CP} ${WRKSRC}/wine.ini /etc/wine.conf

.include <bsd.port.mk>
