# $OpenBSD: Makefile,v 1.11 2017/04/10 11:45:24 sthen Exp $

COMMENT=	NEC2++ antenna simulator

DISTNAME=	necpp-1.2.3
REVISION=	3
CATEGORIES=    	cad hamradio

HOMEPAGE=	http://elec.otago.ac.nz/w/index.php/Necpp
MASTER_SITES=	http://openbsd.dead-parrot.de/distfiles/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=gnu

SHARED_LIBS=necpp 0.0

WANTLIB=c m ${LIBCXX}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/necpp
	${INSTALL_DATA} ${WRKSRC}/test_data/* ${PREFIX}/share/examples/necpp

.include <bsd.port.mk>
