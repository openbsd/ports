# $OpenBSD: Makefile,v 1.6 2006/10/03 05:17:29 aanriot Exp $

COMMENT=	"Prelude manager"

DISTNAME=	prelude-manager-0.9.6
PKGNAME=	${DISTNAME}p0

WANTLIB=	c gcrypt gnutls gpg-error m prelude preludedb pthread z
MODULES=	devel/gettext

CONFIGURE_STYLE=gnu

LIB_DEPENDS=	xml2.>=9::textproc/libxml			     \
		preludedb.>=3.1::security/prelude/libpreludedb

.include <bsd.port.mk>
