# $OpenBSD: Makefile,v 1.24 2011/11/04 08:43:32 jasper Exp $

COMMENT=	Prelude log analyzer

DISTNAME=	prelude-lml-0.9.15
REVISION=	7

WANTLIB += c gcrypt gnutls gpg-error m tasn1 z pcre prelude
WANTLIB += gmp hogweed nettle pthread p11-kit

MODULES=	devel/gettext

MASTER_SITES=	http://www.prelude-ids.com/download/releases/prelude-lml/

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-unsupported-rulesets

LIB_DEPENDS=	devel/pcre \
		security/prelude/libprelude

.include <bsd.port.mk>
