# $OpenBSD: Makefile,v 1.23 2002/05/12 17:04:08 brad Exp $
# $FreeBSD: Makefile,v 1.2 1998/08/11 09:57:51 andreas Exp $

COMMENT=	"network usage, interface similar to top(1)"

DISTNAME=	ntop-1.1-src
PKGNAME=	ntop-1.1
CATEGORIES=	net
NEED_VERSION=	1.402
MASTER_SITES=	ftp://ftp.unipi.it/pub/local/ntop/source/ \
		http://www.freenix.no/~anders/ \
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
