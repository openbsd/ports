# $OpenBSD: Makefile,v 1.15 2017/05/18 13:30:21 sthen Exp $

COMMENT=		C-based regular expression scanner generator

V=			0.16
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
