# $OpenBSD: Makefile,v 1.1 2008/02/03 19:08:30 jakob Exp $

COMMENT=	DNS library modelled after Net::DNS

PKGNAME=	libldns-${VERSION}
SHARED_LIBS +=	ldns                 0.0      # .0.0

WANTLIB=	crypto


post-build:
	mkdir ${WRKBUILD}/doc
	cd ${WRKBUILD} && ${MAKE_PROGRAM} doc

post-install:
	@chown -R ${MANOWN}:${MANGRP} ${PREFIX}/man/man3

.include <bsd.port.mk>
