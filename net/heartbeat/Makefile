# $OpenBSD: Makefile,v 1.1.1.1 2004/04/22 22:05:30 naddy Exp $

COMMENT=	"SixXS IPv6 tunnel broker heartbeat client"

PKGNAME=	heartbeat-20031026
DISTNAME=	heartbeat-unix-2003-10-26
CATEGORIES=	net

HOMEPAGE=	http://www.sixxs.net/tools/heartbeat/
MASTER_SITES=	http://www.sixxs.net/archive/sixxs/heartbeat/unix/

MAINTAINER=	Waldemar Brodkorb <wbx@openbsd.de>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

EXTRACT_SUFX=	.tgz
WRKDIST=	${WRKDIR}/heartbeat
SEPARATE_BUILD=	simple

NO_REGRESS=	Yes

pre-build:
	cp ${FILESDIR}/Makefile ${WRKBUILD}

MAKE_FLAGS=	SRCDIR=${WRKSRC}
DOCDIR=		${PREFIX}/share/doc/heartbeat
EXAMPLEDIR=	${PREFIX}/share/examples/heartbeat

do-install:
	${INSTALL_DATA_DIR} ${DOCDIR} ${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/client/heartbeat.conf ${EXAMPLEDIR}
	${INSTALL_PROGRAM} ${WRKBUILD}/heartbeat-client \
	    ${PREFIX}/sbin/heartbeatd
	${INSTALL_DATA} ${WRKSRC}/doc/draft-massar-v6ops-heartbeat-00.txt \
	    ${DOCDIR}/
	${INSTALL_DATA} ${WRKSRC}/doc/README ${DOCDIR}

.include <bsd.port.mk>
