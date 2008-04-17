# $OpenBSD: Makefile,v 1.3 2008/04/17 19:57:27 sthen Exp $

COMMENT=		web frontend to symon
DISTNAME=		syweb-0.55
PKGNAME=		${DISTNAME}p1
CATEGORIES=		www sysutils

HOMEPAGE=		http://www.xs4all.nl/~wpd/symon
MAINTAINER=		Marc Balmer <mbalmer@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/philes/

NO_REGRESS=		Yes
NO_BUILD=		Yes

PREFIX=			/var/www

RUN_DEPENDS=		:rrdtool-*:net/rrdtool \
			:php5-core->=5.2:www/php5/core

WRKDIST=		${WRKDIR}/syweb

do-install:
	find ${WRKDIR} -name \*.orig -exec rm {} \;
	${TAR} -C ${WRKDIST} -cf - htdocs symon | ${TAR} -C ${PREFIX} -xpf -
	${INSTALL_DATA_DIR} ${PREFIX}/symon
	${INSTALL_SCRIPT} ${WRKDIST}/install_rrdtool.sh ${PREFIX}/symon
	mkdir ${PREFIX}/symon/rrds
	mkdir ${PREFIX}/symon/cache
	cd ${PREFIX}/htdocs/syweb && mv setup.inc setup.inc.sample

.include <bsd.port.mk>
