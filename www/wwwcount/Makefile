# OpenBSD makefile for:	wwwcount
# Version required:	2.3
# Date created:		17 Nov 1997
# Whom:			ejovi
#
# $OpenBSD: Makefile,v 1.4 1998/08/11 12:15:25 form Exp $
#

# WWW site: http://www.fccc.edu/users/muquit/Count.html
# For digit images look at:
# http://www.digitmania.holowww.com/

DISTNAME=	wwwcount2.4
PKGNAME=	wwwcount-2.4
CATEGORIES=	www
MASTER_SITES=	http://www.fccc.edu/users/muquit/src/wwwcount2.4/

MAINTAINER=	form@vs.itam.nsc.ru

GNU_CONFIGURE=	yes
IS_INTERACTIVE=	yes
MAN1=		mkstrip.1

.if defined(USE_RELOAD)
COUNT_RELOAD=	-DCOUNT_RELOAD=1
.endif

pre-configure:
	cd ${WRKSRC}; yes "" | PREFIX=${PREFIX} ./Count-config

pre-build:
.if !defined(USE_RELOAD)
	@echo "***"
	@echo "*** Do \"make USE_RELOAD=yes\" if you want to disable"
	@echo "*** \"reload ignore\" feature."
	@echo "***"
.endif

post-build:
	cd ${WRKSRC}; ./Gen-conf

do-install:
	cd ${WRKSRC}; yes "" | ./Count-install
	cd ${WRKSRC}/utils/mkstrip; \
		${INSTALL_PROGRAM} mkstrip ${PREFIX}/bin; \
		${INSTALL_MAN} mkstrip.1 ${PREFIX}/man/man1; \
		${INSTALL_SCRIPT} mkstrip.sh ${PREFIX}/lib/Counter/digits

.include <bsd.port.mk>
