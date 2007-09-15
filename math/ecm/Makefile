# $OpenBSD: Makefile,v 1.3 2007/09/15 18:44:36 steven Exp $

COMMENT=	elliptic curve method (ECM) factorization library

DISTNAME=	ecm-6.1.2
CATEGORIES=	math

HOMEPAGE=	http://gforge.inria.fr/projects/ecm/

MASTER_SITES=	http://gforge.inria.fr/frs/download.php/1498/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

# GPL/LGLP
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c m

LIB_DEPENDS=	gmp.::devel/gmp

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
		${INSTALL_MAN} ${WRKSRC}/ecm.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
