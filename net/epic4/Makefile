# $OpenBSD: Makefile,v 1.1.1.1 1999/05/30 04:03:36 brad Exp $
# $FreeBSD: Makefile,v 1.13 1999/03/01 16:18:30 mph Exp $

DISTNAME=	epic-4.pre2.003
PKGNAME=	epic4-pre2.003
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.epicsol.org/pub/epic/EPIC4-BETA/ \
		ftp://mirror.pipex.net/pub/epic/EPIC4-BETA/ \
		ftp://totem.fix.no/pub/mirrors/epic/EPIC4-BETA/
DISTFILES=	epic4pre2.003.tar.gz epic4pre2-help.tar.gz
DIST_SUBDIR=	epic4

MAINTAINER=	brad@openbsd.org

EXTRACT_ONLY=	epic4pre2.003.tar.gz
GNU_CONFIGURE=	yes
WRKSRC=		${WRKDIR}/ircii-EPIC4pre2.003

do-install:
	@cd ${WRKSRC} && ${MAKE} INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
	INSTALL_DATA="${INSTALL_DATA}" install

post-install:
	@cd ${PREFIX}/share/epic && ${TAR} -zxf ${DISTDIR}/${DIST_SUBDIR}/epic4pre2-help.tar.gz

.include <bsd.port.mk>

