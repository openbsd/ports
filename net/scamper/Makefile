# $OpenBSD: Makefile,v 1.45 2021/03/25 13:50:28 sthen Exp $

SHARED_LIBS +=  scamperfile               2.4 # 0.0

COMMENT =	parallel internet measurement utility

V =		20210324
DISTNAME =	scamper-cvs-$V
PKGNAME =	scamper-$V

CATEGORIES =	net benchmarks

HOMEPAGE =	https://www.caida.org/tools/measurement/scamper/

MAINTAINER =	Stuart Henderson <stu.ports@spacehopper.org>

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
