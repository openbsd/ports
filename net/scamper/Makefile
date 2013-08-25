# $OpenBSD: Makefile,v 1.11 2013/08/25 19:54:49 sthen Exp $

SHARED_LIBS +=  scamperfile               0.0 # 0.0

COMMENT =	parallel internet measurement utility

V =		20130824
DISTNAME =	scamper-cvs-$V
PKGNAME =	scamper-0.0.$V

CATEGORIES =	net benchmarks

HOMEPAGE =	http://www.caida.org/tools/measurement/scamper/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# GPLv2 only
PERMIT_PACKAGE_CDROM =	 Yes

WANTLIB += c m

MASTER_SITES =	http://www.caida.org/tools/measurement/scamper/code/

USE_GROFF =		Yes
SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-privsep-user=_scamper

.include <bsd.port.mk>
