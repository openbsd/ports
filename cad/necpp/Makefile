# $OpenBSD: Makefile,v 1.18 2019/07/12 20:43:45 sthen Exp $

COMMENT=	NEC2++ antenna simulator

DISTNAME=	necpp-1.2.3
REVISION =	8
CATEGORIES=    	cad hamradio

HOMEPAGE=	http://elec.otago.ac.nz/w/index.php/Necpp
MASTER_SITES=	https://openbsd.dead-parrot.de/distfiles/

# GPL
PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE=gnu

SHARED_LIBS=necpp 0.0

WANTLIB=c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/necpp
	${INSTALL_DATA} ${WRKSRC}/test_data/* ${PREFIX}/share/examples/necpp

.include <bsd.port.mk>
