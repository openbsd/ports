# $OpenBSD: Makefile,v 1.2 1999/02/11 23:03:58 marc Exp $
#

DISTNAME=	cbb-0.73
CATEGORIES=	misc tk80

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	ftp://ftp.me.umn.edu/pub/finance/ \
		ftp://ftp.fifi.org/pub/cbb/

LIB_DEPENDS=    tk80\\.1\\.:${PORTSDIR}/x11/tk80

RUN_DEPENDS=	wish8.0:${PORTSDIR}/x11/tk80 \
		plan:${PORTSDIR}/misc/plan

NO_BUILD=       yes

pre-configure:
	${MV} ${WRKSRC}/install.pl ${WRKSRC}/install.pl.in
	${SED} -e "s:/usr/local:${PREFIX}:"  -e "s:lib/cbb:share/cbb:" \
		${WRKSRC}/install.pl.in > ${WRKSRC}/install.pl

.include <bsd.port.mk>
