# $OpenBSD: Makefile,v 1.7 2001/07/19 06:20:00 pvalchev Exp $

COMMENT=	"solving toolkit for linear equalities and inequalities"

DISTNAME=	cassowary-0.60
CATEGORIES=	math
NEED_VERSION=	1.363
HOMEPAGE=	http://www.cs.washington.edu/research/constraints/cassowary/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=	"no due to GTL dependency"
PERMIT_PACKAGE_FTP=	"no due to GTL dependency"
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

BUILD_DEPENDS=	bison::devel/bison
LIB_DEPENDS=	GTL.1::devel/gtl \
		guile.9::lang/guile

USE_GMAKE=	Yes
YACC=		bison -y
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static \
		--enable-fd-solver \
		--with-gtl=${LOCALBASE} \
		--with-guile-prefix=${LOCALBASE}
MAKE_FLAGS=	MACHINE_ARCH=${MACHINE_ARCH}
FAKE_FLAGS=	PREFIX="${WRKINST}${PREFIX}"

# work around internal compiler error
.if ${MACHINE_ARCH} == "sparc"
CXXFLAGS+=	-O0
.endif

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
