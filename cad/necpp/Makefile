# $OpenBSD: Makefile,v 1.8 2013/03/10 23:04:45 espie Exp $

COMMENT=	NEC2++ antenna simulator

DISTNAME=	necpp-1.2.3
REVISION=	2
CATEGORIES=    	cad hamradio

HOMEPAGE=	http://elec.otago.ac.nz/w/index.php/Necpp
MASTER_SITES=	http://openbsd.dead-parrot.de/distfiles/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=gnu

SHARED_LIBS=necpp 0.0

WANTLIB=c m stdc++
USE_LIBTOOL=Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/necpp
	${INSTALL_DATA} ${WRKSRC}/test_data/* ${PREFIX}/share/examples/necpp

.include <bsd.port.mk>
