# OpenBSD makefile for:	c2html
# Version required:			0.1
# Date created:				December 1, 1997
# Whom:					Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.8 2000/04/21 23:12:37 espie Exp $
#

DISTNAME=		c2html-0.9
CATEGORIES=		textproc www

# Old versions seem to stay there...
MASTER_SITES=		http://user.cs.tu-berlin.de/%7Eschintke/x2html/ \
			${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	apps/www/converters

MAINTAINER=		angelos@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

GNU_CONFIGURE=		Yes
FAKE=			Yes

MAN1=			c2html.1

do-install:
	@ ${INSTALL_PROGRAM} ${WRKSRC}/c2html ${PREFIX}/bin
	@ ${INSTALL_MAN} ${WRKSRC}/c2html.1 ${PREFIX}/man/man1
	@ ${INSTALL_DATA_DIR} ${PREFIX}/share/doc/c2html
.for file in COPYING README
	@ ${INSTALL_DATA} ${WRKSRC}/${file} ${PREFIX}/share/doc/c2html
.endfor

.include <bsd.port.mk>
