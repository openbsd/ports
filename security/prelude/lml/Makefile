# $OpenBSD: Makefile,v 1.4 2006/07/16 00:41:24 aanriot Exp $

COMMENT=	"Prelude log analyzer"

DISTNAME=	prelude-lml-0.9.6
PKGNAME=	${DISTNAME}p0

WANTLIB=	c pthread z gcrypt gpg-error gnutls
MODULES=	devel/gettext

CONFIGURE_STYLE=gnu

LIB_DEPENDS=	pcre.1::devel/pcre			\
		prelude.7::security/prelude/libprelude	\


CONFIGURE_ARGS=	--disable-unsupported-rulesets

.include <bsd.port.mk>
