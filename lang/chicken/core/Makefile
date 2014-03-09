# $OpenBSD: Makefile,v 1.1 2014/03/09 20:17:01 jasper Exp $

SHARED_ONLY=	Yes

SHARED_LIBS=	chicken	2.0

TEST_TARGET=	check
TEST_DEPENDS=	${BUILD_PKGPATH}

MAKE_FLAGS+=	CHICKEN=${LOCALBASE}/libexec/chicken-bootstrap \
		LIBchicken_VERSION="${LIBchicken_VERSION}"

BUILD_DEPENDS=	lang/chicken/bootstrap>=${V}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/{csc,eval}.scm

.include <bsd.port.mk>
