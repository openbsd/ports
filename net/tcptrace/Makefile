# $OpenBSD: Makefile,v 1.31 2019/07/12 20:48:50 sthen Exp $

COMMENT=		TCP dump file analysis tool

DISTNAME=		tcptrace-6.6.7
REVISION=		2
CATEGORIES=		net
HOMEPAGE=		http://www.tcptrace.org/
MASTER_SITES=		http://www.tcptrace.org/download/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=		c m pcap

BUILD_DEPENDS=		devel/bison

RUN_DEPENDS+=		archivers/bzip2 \
			x11/xplot

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		YACC=bison

ALL_TARGET=		tcptrace

NO_TEST=		Yes

DOCFILES=	ARGS COPYRIGHT FAQ README README.mailing_list README.modules \
		README.tput_graphs WWW dot_tcptracerc

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tcptrace
	${INSTALL_PROGRAM} ${WRKSRC}/tcptrace ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/tcptrace.man ${PREFIX}/man/man1/tcptrace.1
.for file in ${DOCFILES}
	${INSTALL_DATA} ${WRKSRC}/${file} ${PREFIX}/share/doc/tcptrace
.endfor

.include <bsd.port.mk>
