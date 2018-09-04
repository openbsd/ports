# $OpenBSD: Makefile,v 1.12 2018/09/04 12:46:14 espie Exp $

SHARED_LIBS=	chicken	5.1 # 8

TEST_TARGET=	check
TEST_DEPENDS=	${BUILD_PKGPATH}
REVISION=	0

MAKE_FLAGS+=	CHICKEN=${LOCALBASE}/libexec/chicken-bootstrap \
		LIBchicken_VERSION="${LIBchicken_VERSION}"

BUILD_DEPENDS=	lang/chicken/bootstrap>=${V}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/{csc.scm,eval.scm,Makefile.bsd}

.include <bsd.port.mk>
