# $OpenBSD: Makefile,v 1.8 2011/03/07 19:50:26 ajacoutot Exp $

COMMENT=	ActiveSync protocol implementation	

DISTNAME=	z-push-1.5
CATEGORIES=	mail www

HOMEPAGE=	http://z-push.sourceforge.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# AGPLv3 (GNU Affero Public License)
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
TINSTDIR=	${TRUEPREFIX}/z-push
SUBST_VARS=	INSTDIR TINSTDIR

WRKDIST=	${WRKDIR}/z-push

RUN_DEPENDS=	mail/zarafa/zarafa,-web

do-install:
	cp -Rp ${WRKSRC} ${INSTDIR}
	find ${INSTDIR} -type f -name \*.orig -exec rm -f {} \;
	mv ${INSTDIR}/config.php ${INSTDIR}/config.php.dist
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}
	${SUBST_CMD} -c -o ${SHAREOWN} -g ${SHAREGRP} \
		${FILESDIR}/z-push.conf ${INSTDIR}/z-push.conf.dist

.include <bsd.port.mk>
