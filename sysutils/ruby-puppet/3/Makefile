# $OpenBSD: Makefile,v 1.123 2016/01/22 13:56:27 jasper Exp $

PORTROACH=	limit:^3

VERSION=	3.8.5

MODULES +=		lang/python
MODPY_BUILDDEP = 	No
MODPY_RUNDEP =		No
RUN_DEPENDS+=	archivers/gtar \
		devel/ruby-rgen,${MODRUBY_FLAVOR}

FAKE_FLAGS +=	HOME=${WKRDIR}/home
SUBST_VARS +=	MODRUBY_BINREV

pre-install:
	mkdir -p ${WRKDIR}/home
	${SUBST_CMD} ${WRKDIST}/lib/puppet/provider/package/gem.rb
	${SUBST_CMD} ${WRKDIST}/lib/puppet/provider/package/pip.rb

.include <bsd.port.mk>
