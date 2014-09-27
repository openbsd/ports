# $OpenBSD: Makefile,v 1.87 2014/09/27 17:08:47 jeremy Exp $

VERSION=	3.7.1
REVISION=	0

RUN_DEPENDS+=	archivers/gtar \
		devel/ruby-rgen,${MODRUBY_FLAVOR}

FAKE_FLAGS += HOME=${WKRDIR}/home

pre-install:
	mkdir -p ${WRKDIR}/home

.include <bsd.port.mk>
