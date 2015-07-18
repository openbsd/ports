# $OpenBSD: Makefile,v 1.115 2015/07/18 15:46:11 jeremy Exp $

PORTROACH=	limit:^3

VERSION=	3.8.1
REVISION=	4

RUN_DEPENDS+=	archivers/gtar \
		devel/ruby-rgen,${MODRUBY_FLAVOR}

FAKE_FLAGS += HOME=${WKRDIR}/home
SUBST_VARS += MODRUBY_BINREV

pre-install:
	mkdir -p ${WRKDIR}/home
	${SUBST_CMD} ${WRKDIST}/lib/puppet/provider/package/gem.rb

.include <bsd.port.mk>
