# $OpenBSD: Makefile,v 1.12 2007/05/26 01:13:06 aanriot Exp $

COMMENT=	"Prelude framework library"

DISTNAME=	libprelude-0.9.14
PKGNAME=	prelude-${DISTNAME}

SHARED_LIBS=	prelude	9.5	# .12.0

MODULES=	devel/gettext \
		lang/python

CONFIGURE_STYLE=gnu

WANTLIB=	c gcrypt opencdk pthread z

LIB_DEPENDS=	gpg-error.>=1,gnutls-extra.>=12::security/libgpg-error \
		gnutls.>=12::security/gnutls

CONFIGURE_ARGS=	--with-html-dir=${PREFIX}/share/doc/
CONFIGURE_ENV=	PYTHON=${MODPY_BIN}

.if ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=	patch-* gcc-*
.endif

.include <bsd.port.mk>
