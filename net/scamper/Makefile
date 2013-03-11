# $OpenBSD: Makefile,v 1.9 2013/03/11 11:35:56 espie Exp $

SHARED_LIBS +=  scamperfile               0.0 # 0.0

COMMENT =	parallel internet measurement utility

V =		20111202b
DISTNAME =	scamper-cvs-$V
PKGNAME =	scamper-0.0.$V

CATEGORIES =	net benchmarks

HOMEPAGE =	http://www.wand.net.nz/scamper/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# GPLv2 only
PERMIT_PACKAGE_CDROM =	 Yes

WANTLIB += c m

MASTER_SITES = ${HOMEPAGE}

USE_GROFF =		Yes
USE_LIBTOOL =		Yes
SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-privsep-user=_scamper

.include <bsd.port.mk>
