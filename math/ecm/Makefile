# $OpenBSD: Makefile,v 1.11 2013/01/12 15:37:43 benoit Exp $

COMMENT =	elliptic curve method (ECM) factorization library

DISTNAME =	ecm-6.4.2
SHARED_LIBS =	ecm	0.1
CATEGORIES =	math

HOMEPAGE =	http://gforge.inria.fr/projects/ecm/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv3 / LGLPv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c m gmp

MASTER_SITES =		http://gforge.inria.fr/frs/download.php/30448/

LIB_DEPENDS =		devel/gmp

USE_LIBTOOL =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
		${INSTALL_MAN} ${WRKSRC}/ecm.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
