# $OpenBSD: Makefile,v 1.69 2019/10/14 20:42:02 sthen Exp $

COMMENT=	Sieve mail filtering for Dovecot

V_SIEVE=	0.5.8
V_DOVECOT=	2.3

DISTNAME=	dovecot-${V_DOVECOT}-pigeonhole-${V_SIEVE}
PKGNAME=	dovecot-pigeonhole-${V_SIEVE}
EPOCH=		1
CATEGORIES=	mail
MASTER_SITES=	${HOMEPAGE}releases/${V_DOVECOT}/

SHARED_LIBS=	dovecot-sieve	3.0

HOMEPAGE=	https://pigeonhole.dovecot.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB=	lib/dovecot/dovecot lib/dovecot/dovecot-lda \
		lib/dovecot/dovecot-login lib/dovecot/dovecot-storage \
		c crypto iconv ssl

LIB_DEPENDS=	converters/libiconv \
		mail/dovecot>=2.3.6v0

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--docdir=${PREFIX}/share/doc
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	@find ${PREFIX}/lib/dovecot -name '*.a' -print | xargs rm
	@find ${PREFIX}/lib/dovecot -name '*.la' -print | xargs rm
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dovecot/
	@mv ${PREFIX}/share/doc/dovecot/example-config/ \
		${PREFIX}/share/examples/dovecot/

.include <bsd.port.mk>
