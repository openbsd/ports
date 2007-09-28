# $OpenBSD: Makefile,v 1.3 2007/09/28 20:22:05 steven Exp $

COMMENT=	DNS library modelled after Net::DNS

DISTNAME=	ldns-1.2.0
PKGNAME=	${DISTNAME}p0
SHARED_LIBS=	ldns	0.0
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

post-install:
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/man/man3

.include <bsd.port.mk>
