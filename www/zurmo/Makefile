# $OpenBSD: Makefile,v 1.10 2013/03/12 06:13:33 ajacoutot Exp $

COMMENT=	customer relationship management (CRM) software

V=		1.1.30
DISTNAME=	zurmo-stable-${V}.21bbcc52bd20
PKGNAME=	zurmo-${V}
REVISION=	0

CATEGORIES=	www productivity

HOMEPAGE=	http://zurmo.org/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://dev2.zurmo.com/downloads/

NO_BUILD=	Yes
NO_TEST=	Yes
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
		misc/memcached \
		www/pecl-APC \
		www/pecl-memcache

do-extract:
	mkdir ${WRKDIST}
	${GZIP_CMD} -dc ${FULLDISTDIR}/${DISTFILES} | ${TAR} xf - -C ${WRKDIST}

do-install:
	cp -Rp ${WRKDIST}/zurmo ${INSTDIR}
	find ${PREFIX} -name '*.orig' -print0 | xargs -0 rm
	# "Remove the api test entry script for production use."
	# "If this website is in production mode, please remove the app/test.php file."
	rm ${PREFIX}/zurmo/app/test.php
	${SUBST_CMD} -c ${FILESDIR}/zurmo.conf \
	    ${INSTDIR}/zurmo.conf.dist
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
