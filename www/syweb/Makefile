# $OpenBSD: Makefile,v 1.1.1.1 2007/10/05 13:32:32 winiger Exp $

COMMENT=		web frontend to symon
DISTNAME=		syweb-0.55
CATEGORIES=		www sysutils

HOMEPAGE=		http://www.xs4all.nl/~wpd/symon
MAINTAINER=		Marc Winiger <winiger@openbsd.org>

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

.include <bsd.port.mk>
