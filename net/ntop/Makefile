# $OpenBSD: Makefile,v 1.31 2012/03/12 17:16:19 ajacoutot Exp $
# $FreeBSD: Makefile,v 1.2 1998/08/11 09:57:51 andreas Exp $

COMMENT=	network usage, interface similar to top(1)

DISTNAME=	ntop-1.1
REVISION=	1
DISTFILES=	${DISTNAME}-src.tar.gz
CATEGORIES=	net
MASTER_SITES=	ftp://totem.fix.no/pub/mirrors/misc/

HOMEPAGE=	http://www.ntop.org/

# NTOP LICENSE (see COPYING in WRKSRC)
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c ncurses pcap pthread

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS= --disable-lsof

USE_GROFF =	Yes

ALL_TARGET=
INSTALL_TARGET=	install install-man

post-install:
	@chmod 700 ${PREFIX}/sbin/ntop
	@strip ${PREFIX}/sbin/ntop

.include <bsd.port.mk>
