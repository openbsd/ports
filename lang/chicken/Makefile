# $OpenBSD: Makefile,v 1.13 2010/10/18 19:20:41 espie Exp $

COMMENT=	practical and portable Scheme system

DISTNAME=	chicken-2.6
REVISION=	2

SHARED_LIBS +=	chicken              1.0      # .0.0
SHARED_LIBS +=	uchicken             1.0      # .0.0

CATEGORIES=	lang

HOMEPAGE=	http://www.call-with-current-continuation.org/

MAINTAINER=	Deanna Phillips <deanna@openbsd.org>

MASTER_SITES=	${HOMEPAGE}

WANTLIB=	c m

# BSD
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM= Yes 
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
USE_GROFF =	Yes

LIB_DEPENDS+=		ffi::devel/libffi

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -pthread" \
			LDFLAGS="-L${LOCALBASE}/lib -pthread"

REGRESS_TARGET=		bench
REGRESS_DEPENDS=	:${PKGNAME}:lang/chicken

CFLAGS+=		-I${LOCALBASE}/include

pre-configure:
	${SUBST_CMD} ${WRKSRC}/cscbench.scm

.include <bsd.port.mk>
