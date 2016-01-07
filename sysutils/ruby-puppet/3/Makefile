# $OpenBSD: Makefile,v 1.122 2016/01/07 10:39:06 sebastia Exp $

PORTROACH=	limit:^3

VERSION=	3.8.4
REVISION =	0

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
