# $OpenBSD: Makefile,v 1.12 2000/04/09 17:38:41 espie Exp $

# WWW site: http://www.fccc.edu/users/muquit/Count.html
# For digit images look at:
# http://www.digitmania.holowww.com/

DISTNAME=	wwwcount2.5
PKGNAME=	wwwcount-2.5
CATEGORIES=	www
FAKE=No
MASTER_SITES=	http://www.fccc.edu/users/muquit/src/wwwcount2.5/

MAINTAINER=	form@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

GNU_CONFIGURE=	yes

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
	@PKG_PREFIX="${PREFIX}" sh ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
