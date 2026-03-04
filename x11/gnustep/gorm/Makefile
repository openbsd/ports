COMMENT=	GNUstep graphical object relationship modeller

V=		1.5.0
GH_ACCOUNT=	gnustep
GH_PROJECT=	apps-gorm
GH_TAGNAME=	gorm-${V:S/./_/g}
PKGNAME=	gorm-${V}
HOMEPAGE=	http://www.gnustep.org/experience/Gorm.html
#SITES=		${SITE_GNUSTEP}dev-apps/
REVISION=	0

SHARED_LIBS=	GormCore		0.2 \
		GormPrefs		1.0 \
		GormObjCHeaderParser 	0.0 \
		InterfaceBuilder	0.0

CATEGORIES=	devel

MODULES=	x11/gnustep
WANTLIB += ${COMPILER_LIBCXX}

MAKE_FLAGS+=	GormObjCHeaderParser_INTERFACE_VERSION=${LIBGormObjCHeaderParser_VERSION}
MAKE_FLAGS+=	GormPrefs_INTERFACE_VERSION=${LIBGormPrefs_VERSION}
MAKE_FLAGS+=	GormCore_INTERFACE_VERSION=${LIBGormCore_VERSION}
MAKE_FLAGS+=	InterfaceBuilder_INTERFACE_VERSION=${LIBInterfaceBuilder_VERSION}

.include <bsd.port.mk>
