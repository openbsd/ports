# $OpenBSD: Makefile,v 1.18 2013/03/14 20:08:14 ajacoutot Exp $

COMMENT=	library for loading and enumurating of PKCS\#11 modules

DISTNAME=	p11-kit-0.16.4

CATEGORIES=	security

SHARED_LIBS +=  p11-kit              0.0      # 0.0

HOMEPAGE=	http://p11-glue.freedesktop.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pthread tasn1

MASTER_SITES=	${HOMEPAGE}releases/

LIB_DEPENDS=	security/libtasn1

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-gtk-doc \
		--with-module-path=${PREFIX}/lib/pkcs11 \
		--with-system-anchors=/etc/ssl/cert.pem

# no translation yet
CONFIGURE_ARGS += --disable-nls

# If one of these tools is found at configure stage, it might be used,
# no matter whether we use --disable-gtk-doc or not.
CONFIGURE_ENV +=ac_cv_path_GTKDOC_CHECK="" \
		ac_cv_path_GTKDOC_REBASE="" \
		ac_cv_path_GTKDOC_MKPDF=""

FAKE_FLAGS=	exampledir=${PREFIX}/share/examples/p11-kit/pkcs11

post-install:
	rm ${PREFIX}/lib/pkcs11/*.{a,la}

.include <bsd.port.mk>
