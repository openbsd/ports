# $OpenBSD: Makefile,v 1.2 2011/06/19 11:33:09 sthen Exp $

SHARED_LIBS +=  scamperfile               0.0 # 0.0

COMMENT =	parallel internet measurement utility

V =		20110608
DISTNAME =	scamper-cvs-$V
PKGNAME =	scamper-0.0.$V

CATEGORIES =	net benchmarks

HOMEPAGE =	http://www.wand.net.nz/scamper/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# GPLv2 only
PERMIT_PACKAGE_CDROM =	 Yes
PERMIT_PACKAGE_FTP =	 Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	 Yes

WANTLIB += c

MASTER_SITES = ${HOMEPAGE}

USE_GROFF =		Yes
USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu
MAKE_FLAGS =		PRIVSEP_USER=_scamper

.include <bsd.port.mk>
