COMMENT=	Sieve mail filtering for Dovecot

V_SIEVE=	0.5.21.1
V_DOVECOT=	2.3

DISTNAME=	dovecot-${V_DOVECOT}-pigeonhole-${V_SIEVE}
PKGNAME=	dovecot-pigeonhole-${V_SIEVE}
EPOCH=		1
CATEGORIES=	mail
SITES=		${HOMEPAGE}releases/${V_DOVECOT}/
DPB_PROPERTIES=	parallel

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
		mail/dovecot>=2.3.20v0

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--docdir=${PREFIX}/share/doc
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FLAVORS =	ldap
FLAVOR ?=

.if ${FLAVOR:Mldap}
CONFIGURE_ARGS+= --with-ldap
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
LIB_DEPENDS+=	databases/openldap
WANTLIB+=	lber ldap sasl2 pthread
.endif

post-install:
	@find ${PREFIX}/lib/dovecot \( -name '*.a' -o -name '*.la' \) -delete
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dovecot/
	@mv ${PREFIX}/share/doc/dovecot/example-config/ \
		${PREFIX}/share/examples/dovecot/

.include <bsd.port.mk>
