# $OpenBSD: Makefile,v 1.35 2014/01/23 17:21:26 espie Exp $

COMMENT=	network usage, interface similar to top(1)

DISTNAME=	ntop-1.1
REVISION=	2
DISTFILES=	${DISTNAME}-src.tar.gz
CATEGORIES=	net
MASTER_SITES=	ftp://totem.fix.no/pub/mirrors/misc/

HOMEPAGE=	http://www.ntop.org/

# NTOP LICENSE (see COPYING in WRKSRC)
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ncurses pcap pthread

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS= --disable-lsof

USE_GROFF =	Yes

ALL_TARGET=
INSTALL_TARGET=	install install-man

NO_TEST=	Yes

post-install:
	@chmod 700 ${PREFIX}/sbin/ntop
	@strip ${PREFIX}/sbin/ntop

.include <bsd.port.mk>
