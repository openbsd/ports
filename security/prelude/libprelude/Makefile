# $OpenBSD: Makefile,v 1.3 2006/07/26 07:12:11 aanriot Exp $

COMMENT=	"Prelude framework library"

DISTNAME=	libprelude-0.9.10.1
PKGNAME=	prelude-${DISTNAME}

SHARED_LIBS=	prelude 8.2

MODULES=	devel/gettext \
		lang/python

CONFIGURE_STYLE=gnu

WANTLIB=	c gcrypt opencdk pthread z

LIB_DEPENDS=	gpg-error.1,gnutls-extra.12::security/libgpg-error \
		gnutls.12::security/gnutls

CONFIGURE_ARGS=	--with-html-dir=${PREFIX}/share/doc/
CONFIGURE_ENV=	PYTHON=${MODPY_BIN}

.include <bsd.port.mk>
