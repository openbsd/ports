# $OpenBSD: Makefile,v 1.6 1999/09/22 10:44:21 espie Exp $
# $FreeBSD: Makefile,v 1.13 1999/03/01 16:18:30 mph Exp $

NEED_VERSION=	1.116
DISTNAME=	epic4pre2.004-19990909
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.epicsol.org/pub/epic/EPIC4-ALPHA/ \
		ftp://ftp.epicsol.org/pub/epic/EPIC4-BETA/ \
		ftp://mirror.pipex.net/pub/epic/EPIC4-ALPHA/ \
		ftp://mirror.pipex.net/pub/epic/EPIC4-BETA/ \
		ftp://totem.fix.no/pub/mirrors/epic/EPIC4-ALPHA/ \
		ftp://totem.fix.no/pub/mirrors/epic/EPIC4-BETA/
DISTFILES=	epic4pre2.004-19990909.tar.gz epic4pre2-help.tar.gz

MAINTAINER=	brad@openbsd.org

EXTRACT_ONLY=	epic4pre2.004-19990909.tar.gz
GNU_CONFIGURE=	yes
WRKSRC=		${WRKDIR}/ircii-EPIC4pre2.004

do-install:
	@cd ${WRKSRC} && ${MAKE} INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
	INSTALL_DATA="${INSTALL_DATA}" install

post-install:
	@cd ${PREFIX}/share/epic && ${TAR} -zxf ${FULLDISTDIR}/epic4pre2-help.tar.gz

.include <bsd.port.mk>
