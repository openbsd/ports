# Ports collection makefile for:  pchar
# Version required:     	  1.1.1
# Date created:			  Thu Dec 16, 1999
# Whom:				  Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.2 2000/01/24 23:42:04 angelos Exp $
# $FreeBSD: ports/net/pchar/Makefile,v 1.1.1.1 1999/11/04 08:33:26 obrien Exp $
#

DISTNAME=	pchar-1.1.1
CATEGORIES=	net
MASTER_SITES=	http://www.ca.sandia.gov/~bmah/Software/pchar/

MAINTAINER=     angelos@openbsd.org

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--with-ipv6

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pchar ${PREFIX}/sbin
	@/usr/bin/perl -pi.orig -e 's/pchar 1/pchar 8/g' ${WRKSRC}/pchar.8
	${INSTALL_MAN} ${WRKSRC}/pchar.8 ${PREFIX}/man/man8/pchar.8
.if !defined(NOPORTDOCS)
	@${MKDIR} ${PREFIX}/share/doc/pchar
	cd ${WRKSRC} ; ${INSTALL_DATA} README FAQ ${PREFIX}/share/doc/pchar
.endif

.include <bsd.port.mk>
