# $OpenBSD: Makefile,v 1.4 2001/11/13 22:13:24 espie Exp $

COMMENT=	"ircII internet relay chat client"

DISTNAME=	tkirc2.46
CATEGORIES=	net
NEED_VERSION=	1.496

HOMEPAGE=	http://netsplit.de/tkirc2/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	ftp://ftp.netsplit.de/pub/tcltk/

RUN_DEPENDS=	::net/ircII \
		::x11/tk/8.3

NO_BUILD=	Yes

WRKDIST=	${WRKDIR}/tkirc2

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tkirc
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tkirc/scripts
	${INSTALL_SCRIPT} ${WRKSRC}/tkirc2 ${PREFIX}/bin/tkirc
	${INSTALL_DATA} ${WRKSRC}/{COPYING,README} ${PREFIX}/share/doc/tkirc
	${INSTALL_SCRIPT} ${WRKSRC}/.tkirc2/scripts/* \
		${PREFIX}/share/examples/tkirc/scripts
	${INSTALL_DATA} ${WRKSRC}/.tkirc2/{netscape.sh,tkircrc-example} \
		${PREFIX}/share/examples/tkirc

.include <bsd.port.mk>
