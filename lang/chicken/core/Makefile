# $OpenBSD: Makefile,v 1.7 2016/03/16 16:46:32 naddy Exp $

SHARED_LIBS=	chicken	4.0 # 7

TEST_TARGET=	check
TEST_DEPENDS=	${BUILD_PKGPATH}

MAKE_FLAGS+=	CHICKEN=${LOCALBASE}/libexec/chicken-bootstrap \
		LIBchicken_VERSION="${LIBchicken_VERSION}"

BUILD_DEPENDS=	lang/chicken/bootstrap>=${V}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/{csc.scm,eval.scm,Makefile.bsd}

.include <bsd.port.mk>
