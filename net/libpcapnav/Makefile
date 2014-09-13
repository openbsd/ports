# $OpenBSD: Makefile,v 1.12 2014/09/13 16:36:54 ajacoutot Exp $

COMMENT=	library for navigating to arbitrary packets in a trace file

DISTNAME=	libpcapnav-0.8
REVISION=	1
SHARED_LIBS=	pcapnav	1.0
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=netdude/}

HOMEPAGE=	http://netdude.sourceforge.net/doco/libpcapnav/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		pcap

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-html-dir=${PREFIX}/share/doc/libpcapnav

.include <bsd.port.mk>
