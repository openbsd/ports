# $FreeBSD: ports/net/ipfm/Makefile,v 1.2 2000/04/09 18:11:44 cpiazza Exp $
# $OpenBSD: Makefile,v 1.3 2000/10/22 15:43:00 espie Exp $

DISTNAME=	ipfm-0.10.4
CATEGORIES=     net
NEED_VERSION=	1.305
EXTRACT_SUFX=	.tgz

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.via.ecp.fr/~tibob/ipfm/archive/

HOMEPAGE=	http://www.via.ecp.fr/~tibob/ipfm/

MAINTAINER=	Oleg Safiullin <form@openbsd.org>

CONFIGURE_STYLE=gnu

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/source/ipfm ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKBUILD}/doc/ipfm.conf.5 ${PREFIX}/man/man5
	${INSTALL_MAN} ${WRKBUILD}/doc/ipfm.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ipfm
	${INSTALL_DATA} ${WRKBUILD}/ipfm.conf.sample \
		${PREFIX}/share/examples/ipfm

.include <bsd.port.mk>
