COMMENT =	non-blocking Qt database framework
DISTNAME =	futuresql-0.1.1

SHARED_LIBS +=  futuresql6                0.0 # 0.0

CATEGORIES =	databases devel

HOMEPAGE =	https://api.kde.org/futuresql/html/index.html

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# LGPLv2.1+, GPLv2+, BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt6Core Qt6Sql m

SITES =		${SITE_KDE:=stable/futuresql/}
EXTRACT_SUFX =	.tar.xz

MODULES =		devel/kf6

CONFIGURE_ARGS =	-DQT_MAJOR_VERSION=6

.include <bsd.port.mk>
