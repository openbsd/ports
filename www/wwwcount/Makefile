# $OpenBSD: Makefile,v 1.8 1999/10/29 09:40:17 turan Exp $

# WWW site: http://www.fccc.edu/users/muquit/Count.html
# For digit images look at:
# http://www.digitmania.holowww.com/

DISTNAME=	wwwcount2.4
PKGNAME=	wwwcount-2.4
CATEGORIES=	www
MASTER_SITES=	http://www.fccc.edu/users/muquit/src/wwwcount2.4/

MAINTAINER=	ports@openbsd.org

GNU_CONFIGURE=	yes
IS_INTERACTIVE=	yes
NO_PACKAGE=	interactive port

.if defined(USE_RELOAD)
MAKE_FLAGS+=	COUNT_RELOAD=-DCOUNT_RELOAD=1
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
	${INSTALL_DATA} ${WRKSRC}/count.cfg ${PREFIX}/lib/Counter/count.cfg.sample

.include <bsd.port.mk>
