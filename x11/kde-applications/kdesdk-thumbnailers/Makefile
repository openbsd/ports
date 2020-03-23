# $OpenBSD: Makefile,v 1.2 2020/03/23 18:01:19 rsadowski Exp $

COMMENT =	KDE thumbnail generators for development files
DISTNAME =	kdesdk-thumbnailers-${VERSION}
CATEGORIES =	devel

HOMEPAGE =	https://kde.org/applications/development/


MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

MODULES +=	x11/kde-applications

LIB_DEPENDS =	devel/gettext,-tools \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kjobwidgets \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons

CONFIGURE_ARGS =	-DCMAKE_C_FLAGS="${CFLAGS} -I${LOCALBASE}/include" \
			-DCMAKE_CXX_FLAGS="${CXXFLAGS} -I${LOCALBASE}/include" \
			-DCMAKE_EXE_LINKER_FLAGS="${LDFLAGS} -L${X11BASE}/lib -L${LOCALBASE}/lib"

.include <bsd.port.mk>
