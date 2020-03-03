# $OpenBSD: Makefile,v 1.15 2020/03/03 10:27:40 semarie Exp $

SHARED_LIBS=	chicken	7.1 # 11

TEST_TARGET=	check
TEST_DEPENDS=	${BUILD_PKGPATH}

MAKE_FLAGS+=	CHICKEN=${LOCALBASE}/libexec/chicken-bootstrap \
		LIBchicken_VERSION="${LIBchicken_VERSION}"

BUILD_DEPENDS=	lang/chicken/bootstrap>=${V}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/{csc.scm,eval.scm,Makefile.bsd}

.include <bsd.port.mk>
