# $OpenBSD: Makefile,v 1.17 2000/03/20 07:12:36 brad Exp $
# $FreeBSD: Makefile,v 1.2 1998/08/11 09:57:51 andreas Exp $

DISTNAME=	ntop-1.1-src
PKGNAME=	ntop-1.1
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.unipi.it/pub/local/ntop/source/ \
		http://www.freenix.no/~anders/ \
		ftp://totem.fix.no/pub/mirrors/misc/

NEED_VERSION=	1.213

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=	Yes

GNU_CONFIGURE=	Yes
CONFIGURE_ARGS= --disable-lsof --disable-threads

ALL_TARGET=
INSTALL_TARGET=	install install-man

WRKDIST=	${WRKDIR}/${PKGNAME}

post-install:
	@strip ${PREFIX}/sbin/ntop

.include <bsd.port.mk>
