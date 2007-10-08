# $OpenBSD: Makefile,v 1.16 2007/10/08 08:22:42 steven Exp $

COMMENT=	Prelude framework library

DISTNAME=	libprelude-0.9.15.1
PKGNAME=	prelude-${DISTNAME}p0

SHARED_LIBS=	prelude	13.1	# .13.1

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
