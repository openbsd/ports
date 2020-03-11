# $OpenBSD: Makefile,v 1.41 2020/03/11 23:32:12 sthen Exp $

SHARED_LIBS +=  scamperfile               2.3 # 0.0

COMMENT =	parallel internet measurement utility

V =		20191102b
DISTNAME =	scamper-cvs-$V
PKGNAME =	scamper-$V

CATEGORIES =	net benchmarks

HOMEPAGE =	https://www.caida.org/tools/measurement/scamper/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# GPLv2 only
PERMIT_PACKAGE =	 Yes

WANTLIB += c crypto m ssl pthread

MASTER_SITES =	https://www.caida.org/tools/measurement/scamper/code/

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-privsep-user=_scamper

post-install:
.for i in trace ping tracelb dealias neighbourdisc sniff
	ln ${PREFIX}/bin/scamper ${PREFIX}/bin/scamper-$i
.endfor

.include <bsd.port.mk>
