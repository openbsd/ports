COMMENT=	GNUstep graphical object relationship modeller

GH_TAGNAME=     1.5.0
GH_ACCOUNT=     gnustep
GH_PROJECT=     apps-gorm
DISTNAME=       gorm-${GH_TAGNAME:S/./_/g}
HOMEPAGE=	http://www.gnustep.org/experience/Gorm.html
#SITES=	${SITE_GNUSTEP}dev-apps/
SITES=	https://github.com/gnustep/apps-gorm/archive/refs/tags/

SHARED_LIBS=	GormCore		0.2 \
		GormPrefs		1.0 \
		GormObjCHeaderParser 	0.0 \
		InterfaceBuilder	0.0

CATEGORIES=	devel

MODULES=	x11/gnustep
WANTLIB += ${COMPILER_LIBCXX}

WRKDIST=	${WRKDIR}/apps-gorm-${DISTNAME}

MAKE_FLAGS+=	GormObjCHeaderParser_INTERFACE_VERSION=${LIBGormObjCHeaderParser_VERSION}
MAKE_FLAGS+=	GormPrefs_INTERFACE_VERSION=${LIBGormPrefs_VERSION}
MAKE_FLAGS+=	GormCore_INTERFACE_VERSION=${LIBGormCore_VERSION}
MAKE_FLAGS+=	InterfaceBuilder_INTERFACE_VERSION=${LIBInterfaceBuilder_VERSION}

.include <bsd.port.mk>
