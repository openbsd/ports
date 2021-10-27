# $OpenBSD: Makefile,v 1.46 2021/10/27 09:22:47 sthen Exp $

# XXX needs a fix to cope with resolvd's comments on the "nameserver" line

SHARED_LIBS +=  scamperfile               3.0 # 2.0

COMMENT =	parallel internet measurement utility

V =		20211026
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
