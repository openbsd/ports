SHARED_LIBS+=	scamperfile               5.0 # 7.0
SHARED_LIBS +=  scamperctrl               1.1 # 3.0

COMMENT=	parallel internet measurement utility

# https://mailman.caida.org/pipermail/scamper-announce/
V=		20230614d
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
