# OpenBSD makefile for:	pine
# http://www.washington.edu/pine/
# Version required:     3.96
# Date created:		10 Nov 1997
# Whom:			ejovi
#
# $OpenBSD: Makefile,v 1.4 1998/03/31 05:59:41 marc Exp $
#

DISTNAME=       pine3.96
PKGNAME=        pine-3.96
CATEGORIES=     mail news
MASTER_SITES=	ftp://ftp.cac.washington.edu/pine/

MAINTAINER=	ports@OpenBSD.ORG

post-install:
	install -c -o ${BINOWN} -g ${BINGRP} -m ${BINMODE} \
		files/pgpencrypt ${PREFIX}/bin/pgpencrypt
	install -c -o ${BINOWN} -g ${BINGRP} -m ${BINMODE} \
		files/pgpdecode ${PREFIX}/bin/pgpdecode
	install -c -o ${BINOWN} -g ${BINGRP} -m ${BINMODE} \
		files/pgpsign ${PREFIX}/bin/pgpsign
	install -d -o ${SHAREOWN} -g ${SHAREGRP} -m 755 \
		${PREFIX}/share/doc/pine
	cd ${WRKSRC} && ${INSTALL_DATA} \
		doc/tech-notes.txt ${FILESDIR}/dot.pinerc.pgp.sample \
		${PREFIX}/share/doc/pine

.include <bsd.port.mk>
