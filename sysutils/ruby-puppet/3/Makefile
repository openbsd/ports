# $OpenBSD: Makefile,v 1.126 2016/04/28 08:54:37 jasper Exp $

PORTROACH=	limit:^3

VERSION=	3.8.7
REVISION=	0

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
