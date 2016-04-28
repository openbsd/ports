# $OpenBSD: Makefile,v 1.8 2016/04/28 17:39:53 sthen Exp $

COMMENT=	PF firewall log analysis

DISTNAME=	hatchet-0.9.2
REVISION=	2
CATEGORIES=	security www
HOMEPAGE=	http://www.dixongroup.net/hatchet/

MAINTAINER=	Jason Dixon <jdixon@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}/downloads/

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		${VARBASE}/www
INSTDIR=	${PREFIX}/hatchet
SUBST_VARS=	INSTDIR

RUN_DEPENDS=	databases/p5-DBD-Chart \
		databases/p5-DBD-SQLite \
		databases/p5-DBI \
		graphics/p5-GD \
		graphics/p5-GD-TextUtil \
		www/ap2-mod_perl \
		www/p5-HTML-Template

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
