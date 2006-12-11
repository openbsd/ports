# $OpenBSD: Makefile,v 1.6 2006/12/11 21:08:35 deanna Exp $

COMMENT=	"library of optimized inner loops"

DISTNAME=	liboil-0.3.10

SHARED_LIBS +=  oil-0.3              2.0      # .1.0

CATEGORIES=	devel
MASTER_SITES=	${HOMEPAGE}download/

HOMEPAGE=	http://liboil.freedesktop.org/

MAINTAINER=	Deanna Phillips <deanna@openbsd.org>

# BSD
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

BUILD_DEPENDS+=		:pkgconfig->=0.15.0:devel/pkgconfig

WANTLIB=		c m

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-glib

.if ${MACHINE_ARCH} == "alpha"
CFLAGS+=-mieee
.endif

.include <bsd.port.mk>
