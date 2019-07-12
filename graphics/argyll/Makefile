# $OpenBSD: Makefile,v 1.19 2019/07/12 20:46:56 sthen Exp $

COMMENT=	ICC compatible color management system

V=		2.0.0
DISTNAME=	Argyll_V${V}_src
PKGNAME=	argyllcms-${V}
EXTRACT_SUFX=	.zip
WRKDIST=	${WRKDIR}/${DISTNAME:S/_src//}
REVISION=	0

CATEGORIES=	graphics sysutils

HOMEPAGE=	http://www.argyllcms.com/

# AGPLv3 (GNU Affero Public License)
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xau Xdmcp Xext Xinerama Xrandr Xss Xxf86vm c jpeg
WANTLIB += m png pthread ssl tiff z

MASTER_SITES=	${HOMEPAGE}

BUILD_DEPENDS=	devel/jam \
		editors/vim # xxd(1)

LIB_DEPENDS=	graphics/png \
		graphics/tiff

MAKE_ENV=	CCOPTFLAG="${CFLAGS} -I${X11BASE}/include" \
		LINKDEBUGFLAG="-L${LOCALBASE}/lib" \
		REFSUBDIR="share/color/argyll/ref"

NO_TEST=	Yes

do-build:
	cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${LOCALBASE}/bin/jam -q -fJambase

do-install:
	cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${ALL_FAKE_FLAGS} DESTDIR="${WRKINST}" \
		PREFIX="${TRUEPREFIX}" ${LOCALBASE}/bin/jam -q -fJambase install
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/argyllcms
	cd ${WRKSRC}/doc && \
		for i in $$(cat afiles); do ${INSTALL_DATA} $${i} ${PREFIX}/share/doc/argyllcms; done
	rm ${PREFIX}/bin/License.txt

.include <bsd.port.mk>
