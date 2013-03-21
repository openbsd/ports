# $OpenBSD: Makefile,v 1.21 2013/03/21 08:46:32 ajacoutot Exp $

COMMENT=	practical and portable Scheme system

DISTNAME=	chicken-2.6
EPOCH=		0

SHARED_LIBS +=	chicken              1.0      # .0.0
SHARED_LIBS +=	uchicken             1.0      # .0.0

CATEGORIES=	lang

HOMEPAGE=	http://www.call-with-current-continuation.org/

MASTER_SITES=	${HOMEPAGE}

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m pthread

USE_GMAKE=		Yes
USE_GROFF =		Yes

LIB_DEPENDS +=		devel/libffi
WANTLIB +=		ffi

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -pthread" \
			LDFLAGS="-L${LOCALBASE}/lib -pthread"

TEST_TARGET=		bench
TEST_DEPENDS=	${FULLPKGNAME}:lang/chicken

CFLAGS+=		-I${LOCALBASE}/include

pre-configure:
	${SUBST_CMD} ${WRKSRC}/cscbench.scm

.include <bsd.port.mk>
