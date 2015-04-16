# $OpenBSD: Makefile,v 1.109 2015/04/16 07:19:12 jasper Exp $

PORTROACH=	limit:^3

VERSION=	3.7.4
REVISION=	2

RUN_DEPENDS+=	archivers/gtar \
		devel/ruby-rgen,${MODRUBY_FLAVOR}

FAKE_FLAGS += HOME=${WKRDIR}/home
SUBST_VARS += MODRUBY_BINREV

pre-install:
	mkdir -p ${WRKDIR}/home
	${SUBST_CMD} ${WRKDIST}/lib/puppet/provider/package/gem.rb

.include <bsd.port.mk>
