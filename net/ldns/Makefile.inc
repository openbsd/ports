# $OpenBSD: Makefile.inc,v 1.31 2017/06/29 10:31:05 sthen Exp $

VERSION=	1.7.0

DISTNAME=	ldns-${VERSION}

CATEGORIES=	net

MASTER_SITES=	http://www.nlnetlabs.nl/downloads/ldns/
HOMEPAGE=	http://www.nlnetlabs.nl/projects/ldns/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE?=	gnu
CONFIGURE_ENV+=		ac_cv_prog_doxygen= \
			cv_prog_cc_flag_O2=

NO_TEST=		Yes

CHECKSUM_FILE=		${.CURDIR}/../distinfo
