# $OpenBSD: Makefile,v 1.2 2020/09/07 14:48:52 rsadowski Exp $

COMMENT =	RSS/Atom parser library
DISTNAME =	syndication-${VERSION}

SHARED_LIBS = KF5Syndication            1.0 # 5.68

WANTLIB += ${COMPILER_LIBCXX} KF5Codecs Qt5Core Qt5Xml m

LIB_DEPENDS =	devel/kf5/kcodecs>=${MODKF5_VERSION}

.include <bsd.port.mk>
