# $OpenBSD: Makefile,v 1.2 2006/07/01 10:45:04 aanriot Exp $

COMMENT=	"Prelude log analyzer"

DISTNAME=	prelude-lml-0.9.5

WANTLIB=	c pthread z gcrypt gpg-error gnutls
MODULES=	devel/gettext

CONFIGURE_STYLE=gnu

LIB_DEPENDS=	pcre.1::devel/pcre			\
		prelude.7::security/prelude/libprelude	\


CONFIGURE_ARGS=	--disable-unsupported-rulesets

.include <bsd.port.mk>
