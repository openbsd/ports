# $OpenBSD: Makefile,v 1.2 2021/10/14 07:15:32 naddy Exp $

COMMENT =	manipulate integer points bounded by linear constraints

DISTNAME =	isl-0.18

SHARED_LIBS +=  isl                       0.0 # 18.0

HOMEPAGE =	https://guix.gnu.org/packages/isl-0.18/

CATEGORIES =	math

#MIT
PERMIT_PACKAGE =	Yes

WANTLIB += gmp

MASTER_SITES =		https://gcc.gnu.org/pub/gcc/infrastructure/
EXTRACT_SUFX =		.tar.bz2

LIB_DEPENDS =		devel/gmp

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes

CONFIGURE_STYLE ?=	gnu
CONFIGURE_ARGS +=	--with-gmp-prefix="${LOCALBASE}"

.include <bsd.port.mk>
