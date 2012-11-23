# $OpenBSD: Makefile.inc,v 1.25 2012/11/23 04:26:09 brad Exp $

VERSION=	1.6.16

DISTNAME=	ldns-${VERSION}

CATEGORIES=	net

MASTER_SITES=	http://www.nlnetlabs.nl/downloads/ldns/
HOMEPAGE=	http://www.nlnetlabs.nl/projects/ldns/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		ac_cv_prog_doxygen= \
			cv_prog_cc_flag_O2=

NO_REGRESS=		Yes

CHECKSUM_FILE=		${.CURDIR}/../distinfo
