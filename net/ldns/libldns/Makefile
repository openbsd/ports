# $OpenBSD: Makefile,v 1.6 2009/02/10 19:24:43 jakob Exp $

COMMENT=	DNS library modelled after Net::DNS

PKGNAME=	libldns-${VERSION}

SHARED_LIBS +=	ldns 2.2

WANTLIB=	crypto

post-build:
	mkdir ${WRKBUILD}/doc
	cd ${WRKBUILD} && ${MAKE_PROGRAM} doc

post-install:
	@chown -R ${MANOWN}:${MANGRP} ${PREFIX}/man/man3

.include <bsd.port.mk>
