# $OpenBSD: Makefile,v 1.11 2020/09/07 14:48:48 rsadowski Exp $

COMMENT =	KDE plugins for QImage supporting extra file formats
DISTNAME =	kimageformats-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} Half-2_5 Iex-2_5 IlmImf-2_5 IlmThread-2_5
WANTLIB += Imath-2_5 KF5Archive Qt5Core Qt5Gui Qt5PrintSupport
WANTLIB += Qt5Widgets m

LIB_DEPENDS =	devel/kf5/karchive>=${MODKF5_VERSION} \
		graphics/openexr

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
