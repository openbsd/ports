COMMENT =	KWallet extension for signond

DISTNAME =	signon-kwallet-extension-${VERSION}

CATEGORIES =	net devel

WANTLIB += ${COMPILER_LIBCXX} GL KF6Wallet Qt6Core Qt6Gui m signon-extension

MODULES +=	textproc/intltool

RUN_DEPENDS =	x11/kde-applications/kaccounts-providers>=${MODKDE_VERSION}

LIB_DEPENDS =	devel/kf6/kwallet \
		net/signond

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
