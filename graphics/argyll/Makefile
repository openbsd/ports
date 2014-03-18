# $OpenBSD: Makefile,v 1.13 2014/03/18 08:16:51 ajacoutot Exp $

COMMENT=	ICC compatible color management system

V=		1.6.3
DISTNAME=	Argyll_V${V}_src
PKGNAME=	argyllcms-${V}
EXTRACT_SUFX=	.zip
WRKDIST=	${WRKDIR}/${DISTNAME:S/_src//}

CATEGORIES=	graphics sysutils

HOMEPAGE=	http://www.argyllcms.com/

# AGPLv3 (GNU Affero Public License)
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xau Xdmcp Xext Xinerama Xrandr Xss Xxf86vm c jpeg
WANTLIB += m pthread tiff

MASTER_SITES=	${HOMEPAGE}

BUILD_DEPENDS=	devel/jam

LIB_DEPENDS=	graphics/tiff

MAKE_ENV=	CCOPTFLAG="${CFLAGS} -I${X11BASE}/include" \
		REFSUBDIR="share/color/argyll/ref"

NO_TEST=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Jamtop

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
