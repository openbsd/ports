# $OpenBSD: Makefile,v 1.6 2006/08/03 23:28:12 espie Exp $

COMMENT=	"Prelude log analyzer"

DISTNAME=	prelude-lml-0.9.6
PKGNAME=	${DISTNAME}p1

WANTLIB=	c pthread z gcrypt gpg-error gnutls
MODULES=	devel/gettext

CONFIGURE_STYLE=gnu

LIB_DEPENDS=	pcre.>=1::devel/pcre			\
		prelude.>=7::security/prelude/libprelude	\


CONFIGURE_ARGS=	--disable-unsupported-rulesets

.include <bsd.port.mk>
