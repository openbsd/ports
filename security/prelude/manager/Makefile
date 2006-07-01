# $OpenBSD: Makefile,v 1.2 2006/07/01 10:45:31 aanriot Exp $

COMMENT=	"Prelude manager"

DISTNAME=	prelude-manager-0.9.5

WANTLIB=	c gpg-error gcrypt gnutls m preludedb pthread z prelude
MODULES=	devel/gettext

CONFIGURE_STYLE=gnu

LIB_DEPENDS=	xml2.9::textproc/libxml			     \
		preludedb.3.1::security/prelude/libpreludedb

.include <bsd.port.mk>
