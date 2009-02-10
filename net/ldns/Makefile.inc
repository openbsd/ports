# $OpenBSD: Makefile.inc,v 1.5 2009/02/10 19:24:42 jakob Exp $

VERSION=	1.5.1

DISTNAME=	ldns-${VERSION}

CATEGORIES=	net

MASTER_SITES=	http://www.nlnetlabs.nl/downloads/ldns/
HOMEPAGE=	http://www.nlnetlabs.nl/ldns/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		ac_cv_prog_doxygen=
USE_LIBTOOL=		Yes
USE_GMAKE=		Yes
NO_REGRESS=		Yes
