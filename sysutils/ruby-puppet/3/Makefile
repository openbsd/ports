# $OpenBSD: Makefile,v 1.120 2015/09/29 08:03:07 jasper Exp $

PORTROACH=	limit:^3

VERSION=	3.8.3

RUN_DEPENDS+=	archivers/gtar \
		devel/ruby-rgen,${MODRUBY_FLAVOR}

FAKE_FLAGS +=	HOME=${WKRDIR}/home
SUBST_VARS +=	MODRUBY_BINREV

pre-install:
	mkdir -p ${WRKDIR}/home
	${SUBST_CMD} ${WRKDIST}/lib/puppet/provider/package/gem.rb

.include <bsd.port.mk>
