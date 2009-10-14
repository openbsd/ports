# $OpenBSD: Makefile,v 1.1.1.1 2009/10/14 14:34:33 phessler Exp $

COMMENT =		marathon / alephone map editor

V =			211
DISTNAME =		weland-r${V}-src
PKGNAME =		weland-${V}

CATEGORIES =		games

HOMEPAGE =		http://sourceforge.net/projects/weland/

# GPL v2-only
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=weland/}
EXTRACT_SUFX =		.zip

MODULES =		lang/mono

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		::lang/mono \
			::x11/mono-gtk2

WRKDIST =		${WRKDIR}/weland

pre-configure:
	@cp ${FILESDIR}/weland.sh ${WRKSRC}
	@${SUBST_CMD} ${WRKSRC}/weland.sh

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/weland/
	${INSTALL_SCRIPT} ${WRKSRC}/Weland.exe ${PREFIX}/libexec/weland/
	${INSTALL_SCRIPT} ${WRKSRC}/weland.sh ${PREFIX}/bin/weland

NO_REGRESS =		Yes

.include <bsd.port.mk>
