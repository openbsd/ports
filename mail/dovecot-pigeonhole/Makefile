# $OpenBSD: Makefile,v 1.5 2011/09/01 10:54:17 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	Sieve mail filtering for Dovecot

V_SIEVE=	0.2.3
V_DOVECOT=	2.0

DISTNAME=	dovecot-${V_DOVECOT}-pigeonhole-${V_SIEVE}
REVISION=	1
EPOCH=		0
CATEGORIES=	mail
PKGNAME=	dovecot-pigeonhole-${V_SIEVE}
MASTER_SITES=	http://www.rename-it.nl/dovecot/${V_DOVECOT}/

SHARED_LIBS=	dovecot-sieve	0.1

HOMEPAGE=	http://pigeonhole.dovecot.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	${MODLIBICONV_WANTLIB} c crypto ssl \
		lib/dovecot/dovecot-lda lib/dovecot/dovecot-login \
		lib/dovecot/dovecot-storage lib/dovecot/dovecot

MODULES=	converters/libiconv
LIB_DEPENDS=	mail/dovecot>=2.0

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--docdir=${PREFIX}/share/doc
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	@find ${PREFIX}/lib/dovecot -name '*.a' -print | xargs rm
	@find ${PREFIX}/lib/dovecot -name '*.la' -print | xargs rm

.include <bsd.port.mk>
