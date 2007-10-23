# $OpenBSD: Makefile,v 1.5 2007/10/23 22:46:18 naddy Exp $

COMMENT=	DNS library modelled after Net::DNS

DISTNAME=	ldns-1.2.1
PKGNAME=	${DISTNAME}p0
SHARED_LIBS +=	ldns                 0.0      # .0.0
CATEGORIES=	net

MASTER_SITES=	http://www.nlnetlabs.nl/downloads/

HOMEPAGE=	http://www.nlnetlabs.nl/ldns/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	crypto

SEPARATE_BUILD=		simple
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		ac_cv_prog_doxygen=
USE_LIBTOOL=		Yes
USE_GMAKE=		Yes
NO_REGRESS=		Yes

post-build:
	mkdir ${WRKBUILD}/doc
	cd ${WRKBUILD} && ${MAKE_PROGRAM} doc

post-install:
	@chown -R ${MANOWN}:${MANGRP} ${PREFIX}/man/man3

.include <bsd.port.mk>
