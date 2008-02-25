# $OpenBSD: Makefile,v 1.2 2008/02/25 00:54:22 espie Exp $

COMMENT=	DNS library modelled after Net::DNS

PKGNAME=	libldns-${VERSION}p0
SHARED_LIBS +=	ldns                 0.0      # .0.0

WANTLIB=	crypto


post-build:
	mkdir ${WRKBUILD}/doc
	cd ${WRKBUILD} && ${MAKE_PROGRAM} doc

post-install:
	@chown -R ${MANOWN}:${MANGRP} ${PREFIX}/man/man3

.include <bsd.port.mk>
