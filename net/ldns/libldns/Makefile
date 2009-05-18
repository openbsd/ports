# $OpenBSD: Makefile,v 1.7 2009/05/18 09:21:57 sthen Exp $

COMMENT=	DNS library modelled after Net::DNS

PKGNAME=	libldns-${VERSION}p0

SHARED_LIBS +=	ldns 2.2

WANTLIB=	crypto

post-build:
	mkdir ${WRKBUILD}/doc
	cd ${WRKBUILD} && ${MAKE_PROGRAM} doc

post-install:
	@chown -R ${MANOWN}:${MANGRP} ${PREFIX}/man/man3

.include <bsd.port.mk>
