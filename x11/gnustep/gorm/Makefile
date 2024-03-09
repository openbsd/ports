COMMENT=	GNUstep graphical object relationship modeller

GH_TAGNAME=     1.3.1
GH_ACCOUNT=     gnustep
GH_PROJECT=     apps-gorm
DISTNAME=       gorm-${GH_TAGNAME}
HOMEPAGE=	http://www.gnustep.org/experience/Gorm.html
#SITES=	${SITE_GNUSTEP}dev-apps/
SITES=	https://github.com/gnustep/apps-gorm/releases/download/gorm-1_3_1/
REVISION=       0

SHARED_LIBS=	GormCore		0.2 \
		GormPrefs		1.0 \
		Gorm			0.0 \
		GormObjCHeaderParser 	0.0

CATEGORIES=	devel

MODULES=	x11/gnustep
WANTLIB += ${COMPILER_LIBCXX}

WRKDIST=	${WRKDIR}/${DISTNAME}

MAKE_FLAGS+=	libGormObjCHeaderParser_INTERFACE_VERSION=${LIBGormObjCHeaderParser_VERSION}
MAKE_FLAGS+=	GormPrefs_INTERFACE_VERSION=${LIBGormPrefs_VERSION}
MAKE_FLAGS+=	GormCore_INTERFACE_VERSION=${LIBGormCore_VERSION}
MAKE_FLAGS+=	libGorm_INTERFACE_VERSION=${LIBGorm_VERSION}

.include <bsd.port.mk>
