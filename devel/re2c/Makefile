# $OpenBSD: Makefile,v 1.14 2017/04/10 11:45:26 sthen Exp $

COMMENT=		C-based regular expression scanner generator

V=			0.15.3
DISTNAME=		re2c-$V
CATEGORIES=		devel
HOMEPAGE=		http://re2c.org/

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

# public domain
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m ${LIBCXX}

MASTER_SITES=		https://github.com/skvadrik/re2c/releases/download/$V/

TEST_DEPENDS=		shells/bash

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
