# $FreeBSD: ports/net/ipfm/Makefile,v 1.2 2000/04/09 18:11:44 cpiazza Exp $
# $OpenBSD: Makefile,v 1.7 2002/10/28 01:38:45 naddy Exp $

COMMENT=	"IP bandwidth analysis tool"

DISTNAME=	ipfm-0.11.4
CATEGORIES=     net

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://robert.cheramy.net/ipfm/archive/
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://robert.cheramy.net/ipfm/

CONFIGURE_STYLE=gnu

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/source/ipfm ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKBUILD}/doc/ipfm.conf.5 ${PREFIX}/man/man5
	${INSTALL_MAN} ${WRKBUILD}/doc/ipfm.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ipfm
	${INSTALL_DATA} ${WRKBUILD}/ipfm.conf.sample \
		${PREFIX}/share/examples/ipfm
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ipfm
	${INSTALL_DATA} ${WRKDIST}/HISTORY ${PREFIX}/share/doc/ipfm
	${INSTALL_DATA} ${WRKDIST}/LICENSE ${PREFIX}/share/doc/ipfm
	${INSTALL_DATA} ${WRKDIST}/TODO ${PREFIX}/share/doc/ipfm

.include <bsd.port.mk>
