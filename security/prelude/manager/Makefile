# $OpenBSD: Makefile,v 1.26 2011/06/02 13:41:40 ajacoutot Exp $

COMMENT=	Prelude manager

DISTNAME=	prelude-manager-0.9.15
REVISION=	4

MASTER_SITES=	http://www.prelude-ids.com/download/releases/prelude-manager/

WANTLIB += c gcrypt gnutls gpg-error m prelude preludedb pthread tasn1 z
WANTLIB += xml2 preludedb gmp hogweed nettle

MODULES=	devel/gettext

CONFIGURE_STYLE=gnu

USE_GROFF =	Yes

LIB_DEPENDS=	textproc/libxml \
		security/prelude/libpreludedb

.include <bsd.port.mk>
