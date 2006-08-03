# $OpenBSD: Makefile,v 1.4 2006/08/03 23:28:12 espie Exp $

COMMENT=	"Prelude manager"

DISTNAME=	prelude-manager-0.9.5
PKGNAME=	${DISTNAME}p0

WANTLIB=	c gcrypt gnutls gpg-error m prelude preludedb pthread z
MODULES=	devel/gettext

CONFIGURE_STYLE=gnu

LIB_DEPENDS=	xml2.>=9::textproc/libxml			     \
		preludedb.>=3.1::security/prelude/libpreludedb

.include <bsd.port.mk>
