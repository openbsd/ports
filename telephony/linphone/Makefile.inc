V ?=		5.3.38
CATEGORIES =	telephony
MODULES +=	devel/cmake
SITES =		https://gitlab.linphone.org/BC/public/${MODULE}/-/archive/${V}/
DISTNAME ?=	${MODULE}-${V}
MAINTAINER =	Landry Breuil <landry@openbsd.org>

COMPILER =	base-clang ports-gcc

# AGPLv3
PERMIT_PACKAGE =	Yes
