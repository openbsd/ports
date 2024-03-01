SHARED_LIBS +=	scamperfile               6.0 # 8.0
SHARED_LIBS +=  scamperctrl               2.0 # 3.2

COMMENT=	parallel internet measurement utility

# https://mailman.caida.org/pipermail/scamper-announce/
V=		20240229
DISTNAME=	scamper-cvs-$V
PKGNAME=	scamper-$V

CATEGORIES=	net benchmarks

HOMEPAGE=	https://www.caida.org/tools/measurement/scamper/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# GPLv2 only
PERMIT_PACKAGE=	 Yes

WANTLIB += c crypto m ssl pthread z

SITES=		https://www.caida.org/tools/measurement/scamper/code/

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-privsep-user=_scamper

post-install:
.for i in trace ping tracelb dealias neighbourdisc sniff host
	ln ${PREFIX}/bin/scamper ${PREFIX}/bin/scamper-$i
.endfor

.include <bsd.port.mk>
