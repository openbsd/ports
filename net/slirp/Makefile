# $OpenBSD: Makefile,v 1.8 2000/04/23 03:40:14 kevlo Exp $
#

DISTNAME=	slirp-1.0c
CATEGORIES=	net
NEED_VERSION=	1.191
MASTER_SITES=	ftp://blitzen.canberra.edu.au/pub/slirp/ \
		ftp://freedom.wit.com/misc4/danjo/SLiRP/

MAINTAINER=	A.C.P.M.Kalker@student.utwente.nl

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=		${WRKDIR}/slirp-1.0c/src
HAS_CONFIGURE=		Yes
FAKE=			Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/slirp ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/slirp.man ${PREFIX}/man/man1/slirp.1

.include <bsd.port.mk>
