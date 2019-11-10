# $OpenBSD: Makefile,v 1.8 2019/11/10 15:32:55 ajacoutot Exp $

COMMENT =	KDE plugins for QImage supporting extra file formats
DISTNAME =	kimageformats-${VERSION}

REVISION =	0

WANTLIB += ${COMPILER_LIBCXX} Half-2_4 Iex-2_4 IlmImf-2_4 IlmThread-2_4
WANTLIB += Imath-2_4 KF5Archive Qt5Core Qt5Gui Qt5PrintSupport
WANTLIB += Qt5Widgets m

LIB_DEPENDS =	devel/kf5/karchive \
		graphics/openexr

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
