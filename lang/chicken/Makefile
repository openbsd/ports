# $OpenBSD: Makefile,v 1.9 2009/09/23 20:56:22 jasper Exp $

COMMENT=	practical and portable Scheme system

DISTNAME=	chicken-2.6

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

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--without-libffi
REGRESS_TARGET=		bench
REGRESS_DEPENDS=	:${PKGNAME}:lang/chicken

CFLAGS+=		-I${LOCALBASE}/include

# gcc 3.3.5 internal compiler error
.if ${MACHINE_ARCH} == "sparc64"
EXTRA_CFLAGS=	-O0
.endif

MAKE_FLAGS+=		EXTRA_CFLAGS=${EXTRA_CFLAGS}

.include <bsd.port.mk>
