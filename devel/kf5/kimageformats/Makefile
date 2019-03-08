# $OpenBSD: Makefile,v 1.6 2019/03/08 20:00:43 cwen Exp $

COMMENT =	KDE plugins for QImage supporting extra file formats
DISTNAME =	kimageformats-${VERSION}
REVISION =	0

WANTLIB += ${COMPILER_LIBCXX} Half Iex IlmImf IlmThread Imath
WANTLIB += KF5Archive Qt5Core Qt5Gui Qt5PrintSupport Qt5Widgets
WANTLIB += m

LIB_DEPENDS =	devel/kf5/karchive \
		graphics/openexr

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
