# $OpenBSD: Makefile,v 1.1.1.1 2015/08/26 14:16:07 sthen Exp $

COMMENT =		Microsoft ClearType fonts

DISTNAME =		PowerPointViewer.exe
EXTRACT_SUFX =
PKGNAME =		msctfonts-1.0
CATEGORIES =		fonts

# No redistribution
PERMIT_PACKAGE_CDROM =	No redistribution
PERMIT_PACKAGE_FTP =	No redistribution
PERMIT_DISTFILES_FTP =	No redistribution

MASTER_SITES =		http://download.microsoft.com/download/f/5/a/f5a3df76-d856-4a61-a6bd-722f52a5be26/

BUILD_DEPENDS =		archivers/cabextract

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

INST_DIR =		${PREFIX}/share/fonts/msctfonts

EXTRACT_CASES =		*.exe) cabextract --lowercase --quiet \
			--directory=${WRKDIST} -F ppviewer.cab ${DISTDIR}/${DISTNAME} ;;

post-extract:
	@cabextract --lowercase -F '*.TT[FC]' --directory=${WRKDIST} \
		${WRKDIST}/ppviewer.cab
	@mv ${WRKDIST}/cambria.ttc ${WRKDIST}/cambria.ttf

do-install:
	${INSTALL_DATA_DIR} ${INST_DIR}
	${INSTALL_DATA} ${WRKSRC}/*.ttf ${INST_DIR}

.include <bsd.port.mk>
