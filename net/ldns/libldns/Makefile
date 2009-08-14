# $OpenBSD: Makefile,v 1.9 2009/08/14 15:00:44 jakob Exp $

COMMENT=	DNS library modelled after Net::DNS

PKGNAME=	libldns-${VERSION}

SHARED_LIBS +=	ldns 4.0

WANTLIB=	crypto

post-build:
	mkdir ${WRKBUILD}/doc
	cd ${WRKBUILD} && ${MAKE_PROGRAM} doc

post-install:
	@chown -R ${MANOWN}:${MANGRP} ${PREFIX}/man/man3

.include <bsd.port.mk>
