# $OpenBSD: Makefile,v 1.9 1999/12/06 17:26:59 brad Exp $
# $FreeBSD: Makefile,v 1.13 1999/03/01 16:18:30 mph Exp $

DISTNAME=	epic4pre2.500
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.epicsol.org/pub/epic/EPIC4-BETA/ \
		ftp://mirror.pipex.net/pub/epic/EPIC4-BETA/ \
		ftp://totem.fix.no/pub/mirrors/epic/EPIC4-BETA/
DISTFILES=	epic4pre2.500.tar.gz epic4pre2-help.tar.gz
EXTRACT_ONLY=	epic4pre2.500.tar.gz

MAINTAINER=	brad@openbsd.org

GNU_CONFIGURE=	yes

WRKSRC=	${WRKDIR}/ircii-EPIC4pre2.500

post-install:
	@cd ${PREFIX}/share/epic && tar -zxf ${FULLDISTDIR}/epic4pre2-help.tar.gz

.include <bsd.port.mk>
