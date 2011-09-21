# $OpenBSD: Makefile,v 1.23 2011/09/21 17:20:56 jasper Exp $

COMMENT=	Prelude log analyzer

DISTNAME=	prelude-lml-0.9.15
REVISION=	6

WANTLIB += c gcrypt gnutls gpg-error m tasn1 z pcre prelude
WANTLIB += gmp hogweed nettle pthread

MODULES=	devel/gettext

MASTER_SITES=	http://www.prelude-ids.com/download/releases/prelude-lml/

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-unsupported-rulesets

LIB_DEPENDS=	devel/pcre \
		security/prelude/libprelude

.include <bsd.port.mk>
