# $OpenBSD: Makefile,v 1.3 2008/06/03 15:03:10 jakob Exp $

COMMENT=	DNS library modelled after Net::DNS

PKGNAME=	libldns-${VERSION}
SHARED_LIBS +=	ldns 1.0

WANTLIB=	crypto


post-build:
	mkdir ${WRKBUILD}/doc
	cd ${WRKBUILD} && ${MAKE_PROGRAM} doc

post-install:
	@chown -R ${MANOWN}:${MANGRP} ${PREFIX}/man/man3

.include <bsd.port.mk>
