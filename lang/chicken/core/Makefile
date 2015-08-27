# $OpenBSD: Makefile,v 1.6 2015/08/27 22:40:33 juanfra Exp $

SHARED_ONLY=	Yes

SHARED_LIBS=	chicken	4.0 # 7

TEST_TARGET=	check
TEST_DEPENDS=	${BUILD_PKGPATH}

MAKE_FLAGS+=	CHICKEN=${LOCALBASE}/libexec/chicken-bootstrap \
		LIBchicken_VERSION="${LIBchicken_VERSION}"

BUILD_DEPENDS=	lang/chicken/bootstrap>=${V}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/{csc.scm,eval.scm,Makefile.bsd}

.include <bsd.port.mk>
