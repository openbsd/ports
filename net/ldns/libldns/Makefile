# $OpenBSD: Makefile,v 1.5 2008/12/29 08:11:46 jakob Exp $

COMMENT=	DNS library modelled after Net::DNS

PKGNAME=	libldns-${VERSION}
SHARED_LIBS +=	ldns 2.1

WANTLIB=	crypto

post-build:
	mkdir ${WRKBUILD}/doc
	cd ${WRKBUILD} && ${MAKE_PROGRAM} doc

post-install:
	@chown -R ${MANOWN}:${MANGRP} ${PREFIX}/man/man3

.include <bsd.port.mk>
