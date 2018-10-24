# $OpenBSD: Makefile,v 1.15 2018/10/24 14:27:58 sthen Exp $

COMMENT=	NEC2++ antenna simulator

DISTNAME=	necpp-1.2.3
REVISION =	6
CATEGORIES=    	cad hamradio

HOMEPAGE=	http://elec.otago.ac.nz/w/index.php/Necpp
MASTER_SITES=	http://openbsd.dead-parrot.de/distfiles/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=gnu

SHARED_LIBS=necpp 0.0

WANTLIB=c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/necpp
	${INSTALL_DATA} ${WRKSRC}/test_data/* ${PREFIX}/share/examples/necpp

.include <bsd.port.mk>
