# $OpenBSD: Makefile,v 1.1.1.1 2011/08/22 08:04:14 ajacoutot Exp $

COMMENT=	library for loading and enumurating of PKCS\#11 modules

DISTNAME=	p11-kit-0.4

CATEGORIES=	security

SHARED_LIBS +=  p11-kit              0.0      # 0.0

HOMEPAGE=	http://p11-glue.freedesktop.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c pthread

MASTER_SITES=	${HOMEPAGE}releases/

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-gtk-doc

# no translation yet
CONFIGURE_ARGS += --disable-nls

FAKE_FLAGS=	exampledir=${PREFIX}/share/examples/p11-kit

pre-configure:
	perl -pi -e 's,-lpthread,-pthread,g' ${WRKSRC}/configure

.include <bsd.port.mk>
