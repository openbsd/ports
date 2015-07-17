# $OpenBSD: Makefile,v 1.114 2015/07/17 18:09:55 jasper Exp $

PORTROACH=	limit:^3

VERSION=	3.8.1
REVISION=	3

RUN_DEPENDS+=	archivers/gtar \
		devel/ruby-rgen,${MODRUBY_FLAVOR}

FAKE_FLAGS += HOME=${WKRDIR}/home
SUBST_VARS += MODRUBY_BINREV

pre-install:
	mkdir -p ${WRKDIR}/home
	${SUBST_CMD} ${WRKDIST}/lib/puppet/provider/package/gem.rb

.include <bsd.port.mk>
