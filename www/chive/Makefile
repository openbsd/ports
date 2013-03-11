# $OpenBSD: Makefile,v 1.11 2013/03/11 11:44:41 espie Exp $

COMMENT=	web-based MySQL management

V=		1.2
DISTNAME=	chive_$V
PKGNAME=	${DISTNAME:S/_/-/}

CATEGORIES=	www databases

HOMEPAGE=	http://www.chive-project.com/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# Chive: GPLv3+
# Yii framework: BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://launchpad.net/chive/1.1/$V/+download/

MODULES=	lang/php
RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-pdo_mysql

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
SUBST_VARS=	INSTDIR
INSTDIR=	${TRUEPREFIX}/chive
WRKDIST=	${WRKDIR}/chive

do-install:
	${INSTALL_DATA_DIR} ${WRKINST}${INSTDIR}
	cd ${WRKSRC} && pax -rw * ${WRKINST}${INSTDIR}
	${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} \
	    -c ${FILESDIR}/chive.conf ${WRKINST}${INSTDIR}/chive.conf.default

.include <bsd.port.mk>
