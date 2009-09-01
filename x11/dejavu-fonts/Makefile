# $OpenBSD: Makefile,v 1.3 2009/09/01 08:40:07 sthen Exp $

COMMENT =		TrueType fonts based on the Bitstream Vera fonts

DISTNAME =		dejavu-fonts-ttf-2.30
PKGNAME =		${DISTNAME:S,-ttf,,}

CATEGORIES =		x11

HOMEPAGE =		http://dejavu-fonts.org/

MAINTAINER =		Tim van der Molen <tbvdm@xs4all.nl>

# see ${WRKDIST}/LICENSE
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=dejavu/}
EXTRACT_SUFX =		.tar.bz2

NO_BUILD =		Yes
NO_REGRESS =		Yes

PKG_ARCH =		*

FONTDIR =		${PREFIX}/lib/X11/fonts/dejavu
EXAMPLEDIR =		${PREFIX}/share/examples/dejavu-fonts
DOCDIR =		${PREFIX}/share/doc/dejavu-fonts
DOCS =			AUTHORS BUGS LICENSE NEWS README langcover.txt \
			status.txt unicover.txt

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${EXAMPLEDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/ttf/* ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/fontconfig/* ${EXAMPLEDIR}
	${INSTALL_DATA} ${DOCS:S,^,${WRKSRC}/,} ${DOCDIR}

.include <bsd.port.mk>
