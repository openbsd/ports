# $OpenBSD: Makefile,v 1.4 2012/11/18 10:21:57 rpe Exp $

PKG_ARCH =	*

COMMENT =	substitute for MS TTF core fonts

DISTNAME =	liberation-fonts-ttf-2.00.1
PKGNAME =	${DISTNAME:S/-ttf//}
CATEGORIES =	fonts x11

HOMEPAGE =	https://fedorahosted.org/liberation-fonts

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# SIL Open Font License, Version 1.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	https://fedorahosted.org/releases/l/i/liberation-fonts/

NO_BUILD =	Yes
NO_REGRESS =	Yes

FONTDIR =	${PREFIX}/lib/X11/fonts/Liberation
DOCDIR =	${PREFIX}/share/doc/liberation-fonts

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/[A-Z][!i]* ${DOCDIR}

.include <bsd.port.mk>
