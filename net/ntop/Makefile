# $OpenBSD: Makefile,v 1.12 1999/05/19 15:57:43 brad Exp $
# $FreeBSD: Makefile,v 1.2 1998/08/11 09:57:51 andreas Exp $

DISTNAME=	ntop-1.1-src
PKGNAME=	ntop-1.1
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.unipi.it/pub/local/ntop/source/ \
		http://www.freenix.no/~anders/ \
		ftp://totem.fix.no/pub/mirrors/misc/

MAINTAINER=	brad@openbsd.org

WRKSRC=		${WRKDIR}/${PKGNAME}

GNU_CONFIGURE=	yes
CONFIGURE_ARGS= --disable-lsof --disable-threads

ALL_TARGET=
INSTALL_TARGET=	install install-man

post-install:
	strip ${PREFIX}/sbin/ntop

.include <bsd.port.mk>
