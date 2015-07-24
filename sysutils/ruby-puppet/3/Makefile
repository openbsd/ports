# $OpenBSD: Makefile,v 1.116 2015/07/24 18:19:36 jasper Exp $

PORTROACH=	limit:^3

VERSION=	3.8.1
REVISION=	5

RUN_DEPENDS+=	archivers/gtar \
		devel/ruby-rgen,${MODRUBY_FLAVOR}

FAKE_FLAGS += HOME=${WKRDIR}/home
SUBST_VARS += MODRUBY_BINREV

pre-install:
	mkdir -p ${WRKDIR}/home
	${SUBST_CMD} ${WRKDIST}/lib/puppet/provider/package/gem.rb

.include <bsd.port.mk>
