# $OpenBSD: Makefile,v 1.2 2016/12/25 14:54:49 zhuk Exp $

COMMENT =		KDE plugins for QImage supporting extra file formats
DISTNAME =		kimageformats-${VERSION}

WANTLIB += Half Iex IlmImf IlmThread Imath KF5Archive Qt5Core
WANTLIB += Qt5Gui Qt5PrintSupport Qt5Widgets m

LIB_DEPENDS =		devel/kf5/karchive \
			graphics/openexr

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
