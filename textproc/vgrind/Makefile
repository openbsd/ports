# $OpenBSD: Makefile,v 1.2 2010/10/23 17:09:35 sthen Exp $

COMMENT=		grind nice listings of programs

DISTNAME=		vgrind-1.0
REVISION=		0
CATEGORIES=		textproc

# 3-clause BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB +=		c

MASTER_SITES=		http://distfiles.nl/

RUN_DEPENDS=		::textproc/groff

NO_REGRESS=		Yes

pre-configure:
	cd ${WRKSRC}; ${SUBST_CMD} vgrind{.sh,.1,efs.5} pathnames.h

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/tmac/ ${PREFIX}/share/vgrind
	${INSTALL_SCRIPT} ${WRKSRC}/vgrind.sh ${PREFIX}/bin/vgrind
	${INSTALL_PROGRAM} ${WRKSRC}/vfontedpr ${PREFIX}/libexec/
	${INSTALL_DATA} ${WRKSRC}/vgrindefs.src \
		${PREFIX}/share/vgrind/vgrindefs
	${INSTALL_DATA} ${WRKSRC}/vgrindefs.src.db \
		${PREFIX}/share/vgrind/vgrindefs.db
	${INSTALL_DATA} ${WRKSRC}/tmac.vgrind ${PREFIX}/share/tmac
	${INSTALL_MAN} ${WRKSRC}/vgrind.1 ${PREFIX}/man/man1/
	${INSTALL_MAN} ${WRKSRC}/vgrindefs.5 ${PREFIX}/man/man5/

.include <bsd.port.mk>
