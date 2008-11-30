# $OpenBSD: Makefile,v 1.3 2008/11/30 22:33:29 jdixon Exp $

COMMENT=	PF firewall log analysis

DISTNAME=	hatchet-0.9.2
CATEGORIES=	security www
HOMEPAGE=	http://www.dixongroup.net/hatchet/

MAINTAINER=	Jason Dixon <jdixon@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/downloads/

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
INSTDIR=	${PREFIX}/hatchet
SUBST_VARS=	INSTDIR

RUN_DEPENDS=	::databases/p5-DBD-Chart \
		::databases/p5-DBD-SQLite \
		::databases/p5-DBI \
		::graphics/p5-GD \
		::graphics/p5-GD-TextUtil \
		::www/mod_perl \
		::www/p5-HTML-Template

do-configure:
	${SUBST_CMD} ${WRKDIST}/conf/hatchet.conf \
			${WRKDIST}/docs/INSTALL \
			${WRKDIST}/docs/README.OpenBSD \
			${WRKDIST}/sbin/hatchart \
			${WRKDIST}/sbin/hatchet \
			${WRKDIST}/sbin/hatchet_mkdb

do-install:
	@find ${WRKDIST} -name \*.bak -or -name \*.orig | xargs rm
	@cp -pR ${WRKDIST} ${INSTDIR}

.include <bsd.port.mk>
