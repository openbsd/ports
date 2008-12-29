# $OpenBSD: Makefile.inc,v 1.4 2008/12/29 08:11:46 jakob Exp $

VERSION=	1.4.1

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
