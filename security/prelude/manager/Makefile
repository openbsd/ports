# $OpenBSD: Makefile,v 1.5 2006/09/24 20:37:55 aanriot Exp $

COMMENT=	"Prelude manager"

DISTNAME=	prelude-manager-0.9.6

WANTLIB=	c gcrypt gnutls gpg-error m prelude preludedb pthread z
MODULES=	devel/gettext

CONFIGURE_STYLE=gnu

LIB_DEPENDS=	xml2.>=9::textproc/libxml			     \
		preludedb.>=3.1::security/prelude/libpreludedb

.include <bsd.port.mk>
