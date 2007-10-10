# $OpenBSD: Makefile,v 1.4 2007/10/10 12:13:00 jakob Exp $

COMMENT=	DNS library modelled after Net::DNS

VERSION=	1.2.1
DISTNAME=	ldns-${VERSION}
PKGNAME=	ldns-${VERSION}
SHARED_LIBS=	ldns	${VERSION}
CATEGORIES=	net

MASTER_SITES=	http://www.nlnetlabs.nl/downloads/

HOMEPAGE=	http://www.nlnetlabs.nl/ldns/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	crypto

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		ac_cv_prog_doxygen=
USE_LIBTOOL=		Yes
USE_GMAKE=		Yes
SUBST_VARS+=		VERSION

post-build:
	mkdir ${WRKBUILD}/doc
	cd ${WRKBUILD} && ${MAKE_PROGRAM} doc

post-install:
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/man/man3

.include <bsd.port.mk>
