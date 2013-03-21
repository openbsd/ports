# $OpenBSD: Makefile.inc,v 1.28 2013/03/21 08:46:34 ajacoutot Exp $

VERSION=	1.6.16

DISTNAME=	ldns-${VERSION}

CATEGORIES=	net

MASTER_SITES=	http://www.nlnetlabs.nl/downloads/ldns/
HOMEPAGE=	http://www.nlnetlabs.nl/projects/ldns/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		ac_cv_prog_doxygen= \
			cv_prog_cc_flag_O2=

NO_TEST=		Yes

CHECKSUM_FILE=		${.CURDIR}/../distinfo
