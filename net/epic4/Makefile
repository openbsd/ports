# $OpenBSD: Makefile,v 1.8 1999/10/26 23:52:27 brad Exp $
# $FreeBSD: Makefile,v 1.13 1999/03/01 16:18:30 mph Exp $

DISTNAME=	epic4pre2.004-19991021
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.epicsol.org/pub/epic/EPIC4-ALPHA/ \
		ftp://mirror.pipex.net/pub/epic/EPIC4-ALPHA/ \
		ftp://totem.fix.no/pub/mirrors/epic/EPIC4-ALPHA/
MASTER_SITES0=	ftp://ftp.epicsol.org/pub/epic/EPIC4-BETA/ \
		ftp://mirror.pipex.net/pub/epic/EPIC4-BETA/ \
		ftp://totem.fix.no/pub/mirrors/epic/EPIC4-BETA/
DISTFILES=	epic4pre2.004-19991021.tar.gz epic4pre2-help.tar.gz:0
EXTRACT_ONLY=	epic4pre2.004-19991021.tar.gz

NEED_VERSION=	1.121

MAINTAINER=	brad@openbsd.org

GNU_CONFIGURE=	yes

WRKSRC=	${WRKDIR}/ircii-EPIC4pre2.004

do-install:
	@cd ${WRKSRC} && ${MAKE} INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
	INSTALL_DATA="${INSTALL_DATA}" install

post-install:
	@cd ${PREFIX}/share/epic && ${TAR} -zxf ${FULLDISTDIR}/epic4pre2-help.tar.gz

.include <bsd.port.mk>
