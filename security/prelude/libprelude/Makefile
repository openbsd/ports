# $OpenBSD: Makefile,v 1.6 2006/10/10 17:18:26 aanriot Exp $

COMMENT=	"Prelude framework library"

DISTNAME=	libprelude-0.9.11
PKGNAME=	prelude-${DISTNAME}

SHARED_LIBS=	prelude 9.0

MODULES=	devel/gettext \
		lang/python

CONFIGURE_STYLE=gnu

WANTLIB=	c gcrypt opencdk pthread z

LIB_DEPENDS=	gpg-error.>=1,gnutls-extra.>=12::security/libgpg-error \
		gnutls.>=12::security/gnutls

CONFIGURE_ARGS=	--with-html-dir=${PREFIX}/share/doc/
CONFIGURE_ENV=	PYTHON=${MODPY_BIN}

.include <bsd.port.mk>
