# $OpenBSD: Makefile,v 1.86 2014/09/24 10:07:02 espie Exp $

VERSION=	3.7.1

RUN_DEPENDS+=	archivers/gtar \
		devel/ruby-rgen,${MODRUBY_FLAVOR}

FAKE_FLAGS += HOME=${WKRDIR}/home

pre-install:
	mkdir -p ${WRKDIR}/home

.include <bsd.port.mk>
