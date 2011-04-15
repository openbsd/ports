# $OpenBSD: Makefile,v 1.20 2011/04/15 16:10:38 ajacoutot Exp $

COMMENT=	Prelude log analyzer

DISTNAME=	prelude-lml-0.9.15
REVISION=	3

WANTLIB += c gcrypt gnutls gpg-error m tasn1 z pcre prelude
WANTLIB += gmp hogweed nettle pthread

MODULES=	devel/gettext

MASTER_SITES=	http://www.prelude-ids.com/download/releases/prelude-lml/

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-unsupported-rulesets

LIB_DEPENDS=	devel/pcre \
		security/prelude/libprelude

.include <bsd.port.mk>
