# $OpenBSD: Makefile,v 1.33 2019/07/12 20:48:42 sthen Exp $

COMMENT=	Sandia Internet path characterization tool

DISTNAME=	pchar-1.5
REVISION =	4
CATEGORIES=	net

MASTER_SITES=	${HOMEPAGE}

PERMIT_PACKAGE=	Yes

WANTLIB=		c m pcap ${COMPILER_LIBCXX} 

COMPILER =		base-clang ports-gcc base-gcc

HOMEPAGE=	http://www.kitchenlab.org/www/bmah/Software/pchar/

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-ipv6 --with-pcap

NO_TEST=	Yes

post-patch:
	/usr/bin/perl -pi.beforesubst -e 's/pchar 1/pchar 8/g' ${WRKSRC}/pchar.8

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pchar ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/pchar.8 ${PREFIX}/man/man8/pchar.8
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pchar
	cd ${WRKSRC} ; ${INSTALL_DATA} README FAQ ${PREFIX}/share/doc/pchar

.include <bsd.port.mk>
