# $OpenBSD: Makefile,v 1.14 2000/05/17 04:34:26 form Exp $

# WWW site: http://www.fccc.edu/users/muquit/Count.html
# For digit images look at:
# http://www.digitmania.holowww.com/

DISTNAME=	wwwcount2.5
PKGNAME=	wwwcount-2.5
CATEGORIES=	www
FAKE=		Yes
MASTER_SITES=	http://wwwcount.yeehaw.net/mirror/%SUBDIR%/ \
		http://mirror.njit.edu/counter/%SUBDIR%/ \
		http://www.neonramp.com/Count/%SUBDIR%/ \
		http://wwwcount.iinetwork.net/%SUBDIR%/ \
		http://www.jesterscastle.com/mirror/Count/%SUBDIR%/ \
		http://www.quiltersdream.com/Count/%SUBDIR%/ \
		http://muquit.com/muquit/software/Count/%SUBDIR%/
MASTER_SITE_SUBDIR=	src/wwwcount2.5

MAINTAINER=	form@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

GNU_CONFIGURE=	Yes

WWWDIR=		/var/www

pre-configure:
	@sed -e "s,@PREFIX@,${PREFIX},g" -e "s,@WWWDIR@,${WWWDIR},g" \
		${FILESDIR}/config.h.in > ${WRKSRC}/src/config.h

do-install:
.for d in A B C D E bang cd cdd cdr
	${INSTALL_DATA_DIR} ${PREFIX}/lib/wwwcount/digits/${d}
	${INSTALL_DATA} ${WRKSRC}/data/digits/${d}/*.gif \
		${PREFIX}/lib/wwwcount/digits/${d}
.endfor
	${INSTALL_DATA} -s ${WRKSRC}/src/Count.cgi ${PREFIX}/lib/wwwcount
	${INSTALL_DATA} ${FILESDIR}/count.cfg.sample ${PREFIX}/lib/wwwcount
	${INSTALL_DATA} ${WRKSRC}/data/rgb.txt ${PREFIX}/lib/wwwcount
	${INSTALL_PROGRAM} ${WRKSRC}/utils/mkstrip/mkstrip ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/utils/mkstrip/mkstrip.1 ${PREFIX}/man/man1
	${INSTALL_PROGRAM} ${WRKSRC}/utils/extdgts/extdgts ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wwwcount
	@cd ${WRKSRC}/docs; cp -RP * ${PREFIX}/share/doc/wwwcount
	@/usr/sbin/chown -R ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/share/doc/wwwcount
	@find ${PREFIX}/share/doc/wwwcount -type f -print | \
		xargs chmod ${SHAREMODE}
	@find ${PREFIX}/share/doc/wwwcount -type d -print | \
		xargs chmod ${BINMODE}

.include <bsd.port.mk>
