# $OpenBSD: Makefile,v 1.5 2013/03/11 11:42:47 espie Exp $

COMMENT=		grind nice listings of programs

DISTNAME=		vgrind-1.0
REVISION=		1
CATEGORIES=		textproc

# 3-clause BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB +=		c

MASTER_SITES=		http://distfiles.nl/

RUN_DEPENDS=		textproc/groff>=1.21

NO_TEST=		Yes

pre-configure:
	cd ${WRKSRC}; ${SUBST_CMD} vgrind{.sh,.1,efs.5} pathnames.h

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/groff/site-tmac/ \
		${PREFIX}/share/vgrind
	${INSTALL_SCRIPT} ${WRKSRC}/vgrind.sh ${PREFIX}/bin/vgrind
	${INSTALL_PROGRAM} ${WRKSRC}/vfontedpr ${PREFIX}/libexec/
	${INSTALL_DATA} ${WRKSRC}/vgrindefs.src \
		${PREFIX}/share/vgrind/vgrindefs
	${INSTALL_DATA} ${WRKSRC}/vgrindefs.src.db \
		${PREFIX}/share/vgrind/vgrindefs.db
	${INSTALL_DATA} ${WRKSRC}/tmac.vgrind \
		${PREFIX}/share/groff/site-tmac
	${INSTALL_MAN} ${WRKSRC}/vgrind.1 ${PREFIX}/man/man1/
	${INSTALL_MAN} ${WRKSRC}/vgrindefs.5 ${PREFIX}/man/man5/

.include <bsd.port.mk>
