# $OpenBSD: Makefile,v 1.16 2019/07/12 20:49:56 sthen Exp $

COMMENT=		boustrophedon text reader
DISTNAME=		boust-0.161
REVISION =		4
CATEGORIES=		textproc

HOMEPAGE=		http://traevoli.com/boust/

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${HOMEPAGE}bin/

MODULES=		x11/tk

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*
SUBST_VARS=		FONTDIR PKGNAME
FONTS=			10x20bw.pcf.gz 10x20fw.pcf.gz 10x20ud.pcf.gz
FONTDIR=		${PREFIX}/share/fonts/boust

do-configure:
	@${SUBST_CMD} ${WRKSRC}/boust

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/boust ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/boust
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/boust
	${INSTALL_DATA_DIR} ${FONTDIR}
.for font in ${FONTS}
	${INSTALL_DATA} ${WRKSRC}/${font} ${FONTDIR}
.endfor
	cd ${WRKSRC} && gunzip boust.1.gz && \
		${INSTALL_MAN} boust.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
