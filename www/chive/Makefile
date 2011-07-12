# $OpenBSD: Makefile,v 1.2 2011/07/12 10:50:59 sthen Exp $

COMMENT=	web-based MySQL management

V=		0.4.2
REVISION=	0
DISTNAME=	chive_$V
PKGNAME=	${DISTNAME:S/_/-/}
WRKDIST=	${WRKDIR}/chive

CATEGORIES=	www databases

HOMEPAGE=	http://www.chive-project.com/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# Chive: GPLv3+
# Yii framework: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://launchpad.net/chive/${V:C/..$//}/$V/+download/

MODULES=	lang/php
RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-pdo_mysql

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
SUBST_VARS=	INSTDIR
INSTDIR=	${TRUEPREFIX}/chive

do-install:
	${INSTALL_DATA_DIR} ${WRKINST}${INSTDIR} ${PREFIX}/conf/modules.samples
	cd ${WRKSRC} && pax -rw * ${WRKINST}${INSTDIR}
	${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} \
	    -c ${FILESDIR}/chive.conf ${WRKINST}${INSTDIR}/chive.conf.default

.include <bsd.port.mk>
