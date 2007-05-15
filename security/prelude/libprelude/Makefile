# $OpenBSD: Makefile,v 1.11 2007/05/15 10:56:55 msf Exp $

COMMENT=	"Prelude framework library"

DISTNAME=	libprelude-0.9.13.2
PKGNAME=	prelude-${DISTNAME}p0

SHARED_LIBS=	prelude	9.4	# .11.4

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
