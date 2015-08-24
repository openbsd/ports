# $OpenBSD: Makefile,v 1.119 2015/08/24 11:24:26 jasper Exp $

PORTROACH=	limit:^3

VERSION=	3.8.2
REVISION=	1

RUN_DEPENDS+=	archivers/gtar \
		devel/ruby-rgen,${MODRUBY_FLAVOR}

FAKE_FLAGS += HOME=${WKRDIR}/home
SUBST_VARS += MODRUBY_BINREV

pre-install:
	mkdir -p ${WRKDIR}/home
	${SUBST_CMD} ${WRKDIST}/lib/puppet/provider/package/gem.rb

.include <bsd.port.mk>
