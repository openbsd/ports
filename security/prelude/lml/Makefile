# $OpenBSD: Makefile,v 1.18 2010/11/16 10:11:51 jasper Exp $

COMMENT=	Prelude log analyzer

DISTNAME=	prelude-lml-0.9.15
REVISION=	2

WANTLIB=	c gcrypt gnutls gpg-error m tasn1 z pcre prelude

MODULES=	devel/gettext

MASTER_SITES=	http://www.prelude-ids.com/download/releases/prelude-lml/

CONFIGURE_STYLE=gnu

LIB_DEPENDS=	::devel/pcre \
		::security/prelude/libprelude

CONFIGURE_ARGS=	--disable-unsupported-rulesets

.include <bsd.port.mk>
