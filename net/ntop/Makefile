# $OpenBSD: Makefile,v 1.14 2000/02/11 00:37:33 espie Exp $
# $FreeBSD: Makefile,v 1.2 1998/08/11 09:57:51 andreas Exp $

DISTNAME=	ntop-1.1-src
PKGNAME=	ntop-1.1
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.unipi.it/pub/local/ntop/source/ \
		http://www.freenix.no/~anders/ \
		ftp://totem.fix.no/pub/mirrors/misc/

NEED_VERSION=	1.191

MAINTAINER=	brad@openbsd.org

WRKDIST=		${WRKDIR}/${PKGNAME}

GNU_CONFIGURE=	yes
CONFIGURE_ARGS= --disable-lsof --disable-threads

ALL_TARGET=
INSTALL_TARGET=	install install-man

post-install:
	@${STRIP} ${PREFIX}/sbin/ntop

.include <bsd.port.mk>
