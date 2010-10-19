# $OpenBSD: Makefile,v 1.5 2010/10/19 08:13:59 espie Exp $

COMMENT=		Type1 font installation helper
DISTNAME=		type1inst-0.6.1
CATEGORIES=		x11 print

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SUNSITE:=X11/xutils/}

NO_BUILD=		Yes
NO_REGRESS=		Yes
PKG_ARCH=		*
INSTALL_STRIP=
USE_GROFF =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/type1inst ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/t1embed ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/type1inst.man ${PREFIX}/man/man1/type1inst.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/type1inst
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/type1inst

.include <bsd.port.mk>
