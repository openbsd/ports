# $OpenBSD: Makefile,v 1.19 2012/10/15 15:18:32 sthen Exp $

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
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c m pthread

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
USE_GROFF =		Yes

LIB_DEPENDS +=		devel/libffi
WANTLIB +=		ffi

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -pthread" \
			LDFLAGS="-L${LOCALBASE}/lib -pthread"

REGRESS_TARGET=		bench
REGRESS_DEPENDS=	${FULLPKGNAME}:lang/chicken

CFLAGS+=		-I${LOCALBASE}/include

pre-configure:
	${SUBST_CMD} ${WRKSRC}/cscbench.scm

.include <bsd.port.mk>
