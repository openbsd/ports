# $OpenBSD: Makefile,v 1.34 2019/07/12 20:51:07 sthen Exp $

COMMENT=	access counter, clock and date for WWW pages

V=		2.5
DISTNAME=	wwwcount$V
PKGNAME=	wwwcount-$V
REVISION=	0
CATEGORIES=	www
MASTER_SITES=	http://muquit.com/muquit/software/Count/src/wwwcount$V/ \
		http://wwwcount.yeehaw.net/src/wwwcount$V/ \
		http://www.asamnet.de/mirror/Count/src/wwwcount$V/ \
		http://wwwcount.webcc.net/src/wwwcount$V/

# For digit images look at:
# http://www.digitmania.holowww.com/
HOMEPAGE=	http://www.muquit.com/muquit/software/Count/Count.html

# BSD-like
PERMIT_PACKAGE=	Yes
WANTLIB=		c

CONFIGURE_STYLE=gnu

WWWDIR=		${VARBASE}/www

pre-configure:
	@sed -e "s,@PREFIX@,${PREFIX},g" -e "s,@WWWDIR@,${WWWDIR},g" \
		${FILESDIR}/config.h.in > ${WRKSRC}/src/config.h

NO_TEST=	Yes

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
	@chown -R ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/share/doc/wwwcount
	@find ${PREFIX}/share/doc/wwwcount -type f -print | \
		xargs chmod ${SHAREMODE}
	@find ${PREFIX}/share/doc/wwwcount -type d -print | \
		xargs chmod ${BINMODE}

.include <bsd.port.mk>
