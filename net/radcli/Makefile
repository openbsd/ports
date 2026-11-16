COMMENT=	simple RADIUS client library

SHARED_LIBS +=	radcli               3.1      # 10.2.0
SHARED_LIBS +=	radcli2              0.1      # 1.0.0

V=		2.0.2
DISTNAME=	radcli-$V
EXTRACT_SUFX=	.tar.xz

CATEGORIES=	net

HOMEPAGE=	https://radcli.github.io/radcli/
SITES=		https://github.com/radcli/radcli/releases/download/$V/

# recent code BSD, some old MERIT/Livingston
PERMIT_PACKAGE=	Yes

WANTLIB += gmp gnutls hogweed iconv idn2 intl nettle p11-kit pthread
WANTLIB += tasn1 unistring

# Uses 'alignas' (C99)
COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

LIB_DEPENDS=	security/gnutls

MODULES=	devel/meson
CONFIGURE_ARGS=	-Ddocs=disabled

post-install:
	mv ${WRKINST}${SYSCONFDIR}/radcli ${PREFIX}/share/examples/radcli

# building tests disabled via meson.build.patch; direct call to
# syscall(SYS_sendmsg, ...) added in 83e039b4e319ec981382a51741eed28cf2c15cc4
#
# most tests need a running local RADIUS server anyway, this is done via
# a script (ns.sh) which requires Linux with netns.
NO_TEST=	Yes

#pre-test:
#	sed -i 's,^#!/bin/bash,#!/usr/local/bin/bash,' ${WRKSRC}/tests/*.sh

.include <bsd.port.mk>
