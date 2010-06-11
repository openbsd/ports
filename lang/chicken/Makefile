# $OpenBSD: Makefile,v 1.11 2010/06/11 21:09:49 landry Exp $

COMMENT=	practical and portable Scheme system

DISTNAME=	chicken-2.6
PKGNAME=	${DISTNAME}p1

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

LIB_DEPENDS+=		ffi::devel/libffi

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

REGRESS_TARGET=		bench
REGRESS_DEPENDS=	:${PKGNAME}:lang/chicken

CFLAGS+=		-I${LOCALBASE}/include

pre-configure:
	${SUBST_CMD} ${WRKSRC}/cscbench.scm

.include <bsd.port.mk>
