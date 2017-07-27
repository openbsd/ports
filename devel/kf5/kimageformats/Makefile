# $OpenBSD: Makefile,v 1.4 2017/07/27 09:34:38 sthen Exp $

COMMENT =	KDE plugins for QImage supporting extra file formats
DISTNAME =	kimageformats-${VERSION}
REVISION =	0

WANTLIB += Half Iex IlmImf IlmThread Imath KF5Archive ${COMPILER_LIBCXX} Qt5Core
WANTLIB += Qt5Gui Qt5PrintSupport Qt5Widgets m

LIB_DEPENDS =	devel/kf5/karchive \
		graphics/openexr

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
