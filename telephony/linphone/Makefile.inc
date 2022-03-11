V ?=		5.0.0
CATEGORIES =	telephony
MODULES +=	devel/cmake
MASTER_SITES =	https://gitlab.linphone.org/BC/public/${MODULE}/-/archive/${V}/
DISTNAME ?=	${MODULE}-${V}
MAINTAINER =	Landry Breuil <landry@openbsd.org>

COMPILER =	base-clang ports-gcc

# GPLv3
PERMIT_PACKAGE =	Yes
