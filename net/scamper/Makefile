# $OpenBSD: Makefile,v 1.33 2018/02/15 11:17:05 sthen Exp $

SHARED_LIBS +=  scamperfile               1.1 # 0.0

COMMENT =	parallel internet measurement utility

V =		20171204
DISTNAME =	scamper-cvs-$V
PKGNAME =	scamper-$V
REVISION =	0

CATEGORIES =	net benchmarks

HOMEPAGE =	http://www.caida.org/tools/measurement/scamper/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# GPLv2 only
PERMIT_PACKAGE_CDROM =	 Yes

WANTLIB += c crypto m ssl pthread

MASTER_SITES =	http://www.caida.org/tools/measurement/scamper/code/

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-privsep-user=_scamper

post-install:
.for i in trace ping tracelb dealias neighbourdisc sniff
	ln ${PREFIX}/bin/scamper ${PREFIX}/bin/scamper-$i
.endfor

.include <bsd.port.mk>
