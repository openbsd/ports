# OpenBSD makefile for:    wwwcount
# Version required:     2.3
# Date created:         17 Nov 1997
# Whom:                 ejovi
#
# $OpenBSD: Makefile,v 1.2 1997/11/19 01:07:58 joey Exp $
#

# WWW site: http://www.fccc.edu/users/muquit/Count.html
# For digit images look at:
# http://www.digitmania.holowww.com/

DISTNAME=       wwwcount2.3
PKGNAME=        wwwcount-2.3
CATEGORIES=     www
MASTER_SITES=   http://www.fccc.edu/users/muquit/src/wwwcount2.3/

MAINTAINER=     joey@OpenBSD.ORG

GNU_CONFIGURE=  yes
IS_INTERACTIVE= yes
MAN1=		mkstrip.1

pre-configure:
	cd ${WRKSRC}; yes "" | PREFIX=${PREFIX} ./Count-config

post-build:
	cd ${WRKSRC}/utils; ${MAKE}
	cd ${WRKSRC}; ./Gen-conf

do-install:
	cd ${WRKSRC}; yes "" | ./Count-install
	cd ${WRKSRC}/utils; \
		${INSTALL_PROGRAM} mkstrip ${PREFIX}/bin; \
		${INSTALL_MAN} mkstrip.1 ${PREFIX}/man/man1; \
		${INSTALL_SCRIPT} mkstrip.sh ${PREFIX}/lib/Counter/digits

.include <bsd.port.mk>
