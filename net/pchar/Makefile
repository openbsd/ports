# Ports collection makefile for:  pchar
# Version required:     	  1.2
# Date created:			  Thu Dec 16, 1999
# Whom:				  Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.12 2001/05/06 05:00:20 lebel Exp $
# $FreeBSD: ports/net/pchar/Makefile,v 1.1.1.1 1999/11/04 08:33:26 obrien Exp $
#

COMMENT=	"Sandia Internet path characterization tool"

DISTNAME=	pchar-1.3.2
CATEGORIES=	net
NEED_VERSION=	1.402
MASTER_SITES=	http://www.employees.org/~bmah/Software/pchar/

MAINTAINER=     Angelos D. Keromytis <angelos@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-ipv6

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pchar ${PREFIX}/sbin
	@/usr/bin/perl -pi.orig -e 's/pchar 1/pchar 8/g' ${WRKSRC}/pchar.8
	${INSTALL_MAN} ${WRKSRC}/pchar.8 ${PREFIX}/man/man8/pchar.8
.if !defined(NOPORTDOCS)
	@mkdir -p ${PREFIX}/share/doc/pchar
	cd ${WRKSRC} ; ${INSTALL_DATA} README FAQ ${PREFIX}/share/doc/pchar
.endif

.include <bsd.port.mk>
