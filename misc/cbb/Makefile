# OpenBSD makefile for:		cbb
# Version required:     	0.73
# Date created:			May 20 1998
# Whom:				Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/20 07:27:47 angelos Exp $
#

DISTNAME=	cbb-0.73
CATEGORIES=	misc tk80
MASTER_SITES=	ftp://ftp.me.umn.edu/pub/finance/ \
		ftp://ftp.fifi.org/pub/cbb/

MAINTAINER=	angelos@openbsd.org

#	extern.conf could easily be patched to use `plan' over `ical'
RUN_DEPENDS=	wish8.0:${PORTSDIR}/x11/tk80 \
		ical:${PORTSDIR}/misc/ical
LIB_DEPENDS=    tk80\\.1\\.:${PORTSDIR}/x11/tk80

NO_BUILD=       yes
USE_PERL5=	yes

pre-configure:
	${MV} ${WRKSRC}/install.pl ${WRKSRC}/install.pl.in
	${SED} -e "s:/usr/local:${PREFIX}:"  -e "s:lib/cbb:share/cbb:" \
		${WRKSRC}/install.pl.in > ${WRKSRC}/install.pl

.include <bsd.port.mk>
