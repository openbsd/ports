# $OpenBSD: Makefile,v 1.9 2012/01/08 10:48:55 benoit Exp $

COMMENT =	elliptic curve method (ECM) factorization library

DISTNAME =	ecm-6.4
SHARED_LIBS =	ecm	0.0
CATEGORIES =	math

HOMEPAGE =	http://gforge.inria.fr/projects/ecm/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2 / LGLPv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c m gmp

MASTER_SITES =		http://gforge.inria.fr/frs/download.php/30052/

LIB_DEPENDS =		devel/gmp

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
		${INSTALL_MAN} ${WRKSRC}/ecm.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
