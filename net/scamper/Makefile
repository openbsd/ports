# $OpenBSD: Makefile,v 1.18 2015/08/12 15:22:49 sthen Exp $

SHARED_LIBS +=  scamperfile               0.1 # 0.0

COMMENT =	parallel internet measurement utility

V =		20141211a
DISTNAME =	scamper-cvs-$V
PKGNAME =	scamper-$V

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
