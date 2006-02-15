# $OpenBSD: Makefile,v 1.5 2006/02/15 05:14:30 david Exp $

COMMENT=	"SixXS IPv6 tunnel broker heartbeat client"

PKGNAME=	sixxs-heartbeatd-20031026p0
DISTNAME=	heartbeat-unix-2003-10-26
CATEGORIES=	net

HOMEPAGE=	http://www.sixxs.net/tools/heartbeat/
MASTER_SITES=	http://www.sixxs.net/archive/sixxs/heartbeat/unix/

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c

EXTRACT_SUFX=	.tgz
WRKDIST=	${WRKDIR}/heartbeat
SEPARATE_BUILD=	simple

NO_REGRESS=	Yes

pre-build:
	cp ${FILESDIR}/Makefile ${WRKBUILD}

MAKE_FLAGS=	SRCDIR=${WRKSRC}
DOCDIR=		${PREFIX}/share/doc/sixxs-heartbeatd
EXAMPLEDIR=	${PREFIX}/share/examples/sixxs-heartbeatd

do-install:
	${INSTALL_DATA_DIR} ${DOCDIR} ${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/client/heartbeat.conf ${EXAMPLEDIR}
	${INSTALL_PROGRAM} ${WRKBUILD}/sixxs-heartbeatd ${PREFIX}/sbin
	${INSTALL_DATA} ${WRKSRC}/doc/draft-massar-v6ops-heartbeat-00.txt \
	    ${DOCDIR}/
	${INSTALL_DATA} ${WRKSRC}/doc/README ${DOCDIR}

.include <bsd.port.mk>
