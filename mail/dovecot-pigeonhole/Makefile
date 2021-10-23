# $OpenBSD: Makefile,v 1.79 2021/09/16 19:36:11 sthen Exp $

COMMENT=	Sieve mail filtering for Dovecot

V_SIEVE=	0.5.16
V_DOVECOT=	2.3

DISTNAME=	dovecot-${V_DOVECOT}-pigeonhole-${V_SIEVE}
PKGNAME=	dovecot-pigeonhole-${V_SIEVE}
EPOCH=		1
CATEGORIES=	mail
MASTER_SITES=	${HOMEPAGE}releases/${V_DOVECOT}/
DPB_PROPERTIES=	parallel

PATCHFILES=	dovecot-pigeonhole-implicit_keep{9f3002393fe1c1fe317121d03591569dac120739%5E..4596d39908a868783fae9a0c2fd264409c0aaa96}.patch:0
PATCH_DIST_STRIP= -p1
MASTER_SITES0=	https://github.com/dovecot/pigeonhole/compare/

REVISION=	0

SHARED_LIBS=	dovecot-sieve	4.0

HOMEPAGE=	https://pigeonhole.dovecot.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB=	lib/dovecot/dovecot lib/dovecot/dovecot-lda \
		lib/dovecot/dovecot-login lib/dovecot/dovecot-storage \
		c crypto iconv ssl

DEBUG_PACKAGES=	${BUILD_PACKAGES}

LIB_DEPENDS=	converters/libiconv \
		mail/dovecot>=2.3.16v0

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--docdir=${PREFIX}/share/doc
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	@find ${PREFIX}/lib/dovecot \( -name '*.a' -o -name '*.la' \) -delete
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dovecot/
	@mv ${PREFIX}/share/doc/dovecot/example-config/ \
		${PREFIX}/share/examples/dovecot/

.include <bsd.port.mk>
