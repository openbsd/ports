# OpenBSD makefile for:	c2html
# Version required:			0.1
# Date created:				December 1, 1997
# Whom:					Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.2 1999/07/20 16:41:47 jakob Exp $
#

DISTNAME=		c2html-0.6.1
CATEGORIES=		textproc www
MASTER_SITES=		${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	apps/www/converters

MAINTAINER=		angelos@openbsd.org

GNU_CONFIGURE=		yes

MAN1=			c2html.1

do-install:
	@ ${INSTALL_PROGRAM} ${WRKSRC}/c2html ${PREFIX}/bin
	@ ${INSTALL_MAN} ${WRKSRC}/c2html.1 ${PREFIX}/man/man1
	@ ${MKDIR} ${PREFIX}/share/doc/c2html
.for file in COPYING README
	@ ${INSTALL_DATA} ${WRKSRC}/${file} ${PREFIX}/share/doc/c2html
.endfor

.include <bsd.port.mk>
