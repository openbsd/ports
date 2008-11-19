# $OpenBSD: Makefile,v 1.4 2008/11/19 09:42:19 jakob Exp $

COMMENT=	DNS library modelled after Net::DNS

PKGNAME=	libldns-${VERSION}p0
SHARED_LIBS +=	ldns 2.0

WANTLIB=	crypto


post-build:
	mkdir ${WRKBUILD}/doc
	cd ${WRKBUILD} && ${MAKE_PROGRAM} doc

post-install:
	@chown -R ${MANOWN}:${MANGRP} ${PREFIX}/man/man3

.include <bsd.port.mk>
