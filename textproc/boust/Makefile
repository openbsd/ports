# $OpenBSD: Makefile,v 1.7 2007/09/05 05:38:20 sturm Exp $

COMMENT=		boustrophedon text reader
DISTNAME=		boust-0.161
PKGNAME=		${DISTNAME}p1
CATEGORIES=		textproc

HOMEPAGE=		http://traevoli.com/boust/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}bin/

RUN_DEPENDS=		::x11/tk/8.4

NO_BUILD=		Yes
NO_REGRESS=		Yes
PKG_ARCH=		*
SUBST_VARS=		FONTDIR PKGNAME
FONTS=			10x20bw.pcf.gz 10x20fw.pcf.gz 10x20ud.pcf.gz
FONTDIR=		${PREFIX}/lib/X11/fonts/boust

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
