COMMENT =		marathon / alephone map editor
#BROKEN =	because mono

V =			211
DISTNAME =		weland-r${V}-src
PKGNAME =		weland-${V}
REVISION =		2

CATEGORIES =		games

HOMEPAGE =		https://sourceforge.net/projects/weland/

# GPL v2-only
PERMIT_PACKAGE =	Yes

SITES =			${SITE_SOURCEFORGE:=weland/}
EXTRACT_SUFX =		.zip

MODULES =		lang/mono
MODMONO_GMCS_COMPAT =	Yes

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		x11/mono-gtk2

WRKDIST =		${WRKDIR}/weland

pre-configure:
	@cp ${FILESDIR}/weland.sh ${WRKSRC}
	@${SUBST_CMD} ${WRKSRC}/weland.sh

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/weland/
	${INSTALL_SCRIPT} ${WRKSRC}/Weland.exe ${PREFIX}/libexec/weland/
	${INSTALL_SCRIPT} ${WRKSRC}/weland.sh ${PREFIX}/bin/weland

NO_TEST =		Yes

.include <bsd.port.mk>
