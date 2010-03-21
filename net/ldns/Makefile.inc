# $OpenBSD: Makefile.inc,v 1.10 2010/03/21 13:50:27 sthen Exp $

VERSION=	1.6.4

DISTNAME=	ldns-${VERSION}

CATEGORIES=	net

MASTER_SITES=	http://www.nlnetlabs.nl/downloads/ldns/
HOMEPAGE=	http://www.nlnetlabs.nl/projects/ldns/

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
