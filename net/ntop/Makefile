# $OpenBSD: Makefile,v 1.25 2003/02/24 21:28:45 rohee Exp $
# $FreeBSD: Makefile,v 1.2 1998/08/11 09:57:51 andreas Exp $

COMMENT=	"network usage, interface similar to top(1)"

DISTNAME=	ntop-1.1-src
PKGNAME=	ntop-1.1
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.unipi.it/pub/local/ntop/source/ \
		ftp://totem.fix.no/pub/mirrors/misc/

HOMEPAGE=	http://www.ntop.org/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS= --disable-lsof --disable-threads

ALL_TARGET=
INSTALL_TARGET=	install install-man

WRKDIST=	${WRKDIR}/${PKGNAME}

post-install:
	@chmod 700 ${PREFIX}/sbin/ntop
	@strip ${PREFIX}/sbin/ntop

.include <bsd.port.mk>
