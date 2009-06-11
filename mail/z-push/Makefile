# $OpenBSD: Makefile,v 1.1.1.1 2009/06/11 07:25:35 ajacoutot Exp $

COMMENT=	ActiveSync protocol implementation	

DISTNAME=	z-push-1.2.1
CATEGORIES=	mail www

HOMEPAGE=	http://z-push.sourceforge.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_BERLIOS:=z-push/}

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
INSTDIR=	${PREFIX}/z-push
SUBST_VARS=	INSTDIR

WRKDIST=	${WRKDIR}/z-push

RUN_DEPENDS=	:php5-mapi-*:mail/zarafa/zarafa,-php \
		::mail/pear-Mail

do-install:
	cp -Rp ${WRKSRC} ${INSTDIR}
	find ${INSTDIR} -type f -name \*.orig -exec rm -f {} \;
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
