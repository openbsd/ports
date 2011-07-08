# $OpenBSD: Makefile,v 1.13 2011/07/08 21:46:36 robert Exp $

COMMENT=	ActiveSync protocol implementation	

V=		1.5.3
DISTNAME=	z-push-${V}-685
PKGNAME=	z-push-${V}
CATEGORIES=	mail www

REVISION=	1

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

MODULES=	lang/php
RUN_DEPENDS=	mail/zarafa/zarafa,-web \
		lang/php/${MODPHP_VERSION},-imap

do-install:
	cp -Rp ${WRKSRC} ${INSTDIR}
	find ${INSTDIR} -type f -name \*.orig -exec rm -f {} \;
	mv ${INSTDIR}/config.php ${INSTDIR}/config.php.dist
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}
	${SUBST_CMD} -c -o ${SHAREOWN} -g ${SHAREGRP} \
		${FILESDIR}/z-push.conf ${INSTDIR}/z-push.conf.dist

.include <bsd.port.mk>
