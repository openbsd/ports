# $OpenBSD: Makefile,v 1.62 2022/02/12 11:08:57 ajacoutot Exp $

COMMENT=		library for loading and enumerating PKCS\#11 modules

GH_PROJECT=		p11-kit
GH_ACCOUNT=		p11-glue
GH_TAGNAME=		0.24.1

CATEGORIES=		security

SHARED_LIBS += p11-kit                   3.0 # 0.3.0

HOMEPAGE=		http://p11-glue.freedesktop.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD-like
PERMIT_PACKAGE=	Yes

WANTLIB += c ffi pthread tasn1

MODULES=		devel/meson

CFLAGS +=		-pthread

BUILD_DEPENDS=		devel/gettext,-tools \
			shells/bash-completion

LIB_DEPENDS=		devel/libffi \
			security/libtasn1

CONFIGURE_ARGS=		-Dtrust_paths=/etc/ssl/cert.pem \
			-Dsystemd=disabled

DEBUG_PACKAGES=		${BUILD_PACKAGES}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p11-kit/
	mv ${WRKINST}${SYSCONFDIR}/pkcs11 \
		${PREFIX}/share/examples/p11-kit/
# see the install-exec-hook target in p11-kit/Makefile.am
	ln -sf libp11-kit.so.${LIBp11-kit_VERSION} ${PREFIX}/lib/p11-kit-proxy.so

.include <bsd.port.mk>
