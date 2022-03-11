COMMENT=	interpretive macro/programming language

V=		11-166
DISTNAME=	zoem-${V}
PKGNAME=	zoem-${V:S,-,_,}
CATEGORIES=	textproc lang

HOMEPAGE=	https://micans.org/zoem/

# GPLv2
PERMIT_PACKAGE=	Yes
WANTLIB=	c m curses readline

MASTER_SITES=	${HOMEPAGE}/src/

CONFIGURE_STYLE=gnu
USE_GROFF =	Yes

FAKE_FLAGS=	docexamplesdir=${PREFIX}/share/examples/zoem/

.include <bsd.port.mk>
