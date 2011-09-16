# $OpenBSD: Makefile,v 1.27 2011/09/16 11:41:39 espie Exp $

COMMENT=	Prelude manager

DISTNAME=	prelude-manager-0.9.15
REVISION=	5

MASTER_SITES=	http://www.prelude-ids.com/download/releases/prelude-manager/

WANTLIB += c gcrypt gnutls gpg-error m prelude preludedb pthread tasn1 z
WANTLIB += xml2 preludedb gmp hogweed nettle

MODULES=	devel/gettext

CONFIGURE_STYLE=gnu

USE_GROFF =	Yes

LIB_DEPENDS=	textproc/libxml \
		security/prelude/libpreludedb

.include <bsd.port.mk>
