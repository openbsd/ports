# OpenBSD makefile for:	c2html
# Version required:			0.1
# Date created:				December 1, 1997
# Whom:					Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.6 2000/04/09 17:38:23 espie Exp $
#

DISTNAME=		c2html-0.6.1
CATEGORIES=		textproc www
FAKE=No
MASTER_SITES=		${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	apps/www/converters

MAINTAINER=		angelos@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

GNU_CONFIGURE=		yes

MAN1=			c2html.1

do-install:
	@ ${INSTALL_PROGRAM} ${WRKSRC}/c2html ${PREFIX}/bin
	@ ${INSTALL_MAN} ${WRKSRC}/c2html.1 ${PREFIX}/man/man1
	@ mkdir -p ${PREFIX}/share/doc/c2html
.for file in COPYING README
	@ ${INSTALL_DATA} ${WRKSRC}/${file} ${PREFIX}/share/doc/c2html
.endfor

.include <bsd.port.mk>
