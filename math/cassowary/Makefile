# $OpenBSD: Makefile,v 1.1.1.1 2001/01/19 16:45:03 reinhard Exp $

DISTNAME=	cassowary-0.60
CATEGORIES=	math
NEED_VERSION=	1.351

MAINTAINER=	Peter Valchev <pvalchev@toxiclinux.org>

HOMEPAGE=	http://www.cs.washington.edu/research/constraints/cassowary/

MASTER_SITES=	${HOMEPAGE}

FAKE_FLAGS=	PREFIX="${WRKINST}${PREFIX}"

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	bison::devel/bison

LIB_DEPENDS=	guile.9::lang/guile \
		GTL.0.3::devel/gtl

USE_GMAKE=	Yes

YACC=		bison -y

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --enable-fd-solver \
		 --with-guile-prefix=${LOCALBASE}

pre-configure:
	@echo ""
	@echo "*** WARNING: you may see an error such as"
	@echo "***       virtual memory exhausted"
	@echo "*** when building this package.  If you do you must increase"
	@echo "*** your limits.  See the man page for your shell and look"
	@echo "*** for the 'limit' or 'ulimit' command."
	@echo ""

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cassowary-config ${PREFIX}/bin/cassowary-config
	${INSTALL_DATA_DIR} ${PREFIX}/include/cassowary
	${INSTALL_DATA} ${WRKSRC}/c++/Cl.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKSRC}/c++/ClC.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKSRC}/c++/*.h ${PREFIX}/include/cassowary
	${INSTALL_DATA} ${WRKSRC}/guile/*.h ${PREFIX}/include/cassowary
	${INSTALL_DATA_DIR} ${PREFIX}/lib/cassowary/tests
	${INSTALL_DATA_DIR} ${PREFIX}/lib/guile/site/cassowary
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/cassowary
	${INSTALL_PROGRAM} ${WRKSRC}/c++/ClTests ${PREFIX}/lib/cassowary/tests
	${INSTALL_DATA} ${WRKSRC}/guile/.libs/* ${PREFIX}/lib/guile/site/cassowary
	${INSTALL_DATA} ${WRKSRC}/c++/.libs/* ${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/docs/cassowary-tr.* ${PREFIX}/share/doc/cassowary

.include <bsd.port.mk>
