# $OpenBSD: Makefile,v 1.14 2014/04/04 23:13:17 sthen Exp $

SHARED_LIBS +=  scamperfile               0.0 # 0.0

COMMENT =	parallel internet measurement utility

V =		20140404
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

post-install:
.for i in trace ping tracelb dealias sting neighbourdisc tbit sniff
	ln ${PREFIX}/bin/scamper ${PREFIX}/bin/scamper-$i
.endfor

.include <bsd.port.mk>
