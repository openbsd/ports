# $OpenBSD: Makefile,v 1.2 2012/08/05 22:16:21 ajacoutot Exp $

COMMENT=	customer relationship management (CRM) software

V=		0.7.10
DISTNAME=	zurmo-stable-${V}.2b36c58196f9
PKGNAME=	zurmo-${V}
REVISION=	0

CATEGORIES=	www productivity

HOMEPAGE=	http://zurmo.org/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://dev.zurmo.com/downloads/

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
INSTDIR=	${PREFIX}/zurmo
TINSTDIR=	${TRUEPREFIX}/zurmo
SUBST_VARS=	INSTDIR TINSTDIR

MODULES=	lang/php
RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-curl \
		lang/php/${MODPHP_VERSION},-imap \
		lang/php/${MODPHP_VERSION},-mysql \
		lang/php/${MODPHP_VERSION},-pdo_mysql \
		lang/php/${MODPHP_VERSION},-soap \
		www/pecl-APC

# XXX needs memcached >= 2.2.0
#RUN_DEPENDS +=	misc/memcached

do-extract:
	mkdir ${WRKDIST}
	${GZIP_CMD} -dc ${FULLDISTDIR}/${DISTFILES} | ${TAR} xf - -C ${WRKDIST}

do-install:
	cp -Rp ${WRKDIST} ${INSTDIR}
	# "Remove the api test entry script for production use."
	# "If this website is in production mode, please remove the app/test.php file."
	rm ${PREFIX}/zurmo/app/test.php
	${SUBST_CMD} -c ${FILESDIR}/zurmo.conf \
	    ${INSTDIR}/zurmo.conf.dist
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
