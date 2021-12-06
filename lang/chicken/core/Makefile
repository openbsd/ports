# $OpenBSD: Makefile,v 1.16 2021/12/06 19:12:30 op Exp $

SHARED_LIBS=	chicken	8.0 # 11

TEST_TARGET=	check
TEST_DEPENDS=	${BUILD_PKGPATH}

MAKE_FLAGS+=	CHICKEN=${LOCALBASE}/libexec/chicken-bootstrap \
		LIBchicken_VERSION="${LIBchicken_VERSION}"

BUILD_DEPENDS=	lang/chicken/bootstrap>=${V}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/{csc.scm,eval.scm,Makefile.bsd}

.include <bsd.port.mk>
