# New ports collection makefile for:	m4
# Version required:     1.4
# Date created:		2 December 1997
# Whom:			niklas
#
# $OpenBSD: Makefile,v 1.1.1.1 1997/12/02 12:50:35 niklas Exp $
# $FreeBSD: Makefile,v 1.7 1997/06/16 08:22:35 max Exp $
#

DISTNAME=       m4-1.4
CATEGORIES=	devel
MASTER_SITES=   ${MASTER_SITE_GNU}

MAINTAINER=	niklas@openbsd.org

GNU_CONFIGURE=yes
CONFIGURE_ARGS= --program-prefix=g

post-install:
	@${MKDIR} ${PREFIX}/share/examples/gm4
	${INSTALL_DATA} ${WRKSRC}/examples/*.m4 ${PREFIX}/share/examples/gm4
	@if [ ! -f ${PREFIX}/info/dir ]; then \
	  ${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	 fi
	@install-info ${PREFIX}/info/m4.info ${PREFIX}/info/dir

.include <bsd.port.mk>
