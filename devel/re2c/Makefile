# $OpenBSD: Makefile,v 1.18 2017/07/23 09:26:27 espie Exp $

COMMENT=		C-based regular expression scanner generator

V=			0.16
REVISION=		1
DISTNAME=		re2c-$V
CATEGORIES=		devel
HOMEPAGE=		http://re2c.org/

# public domain
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m ${COMPILER_LIBCXX}

MASTER_SITES=		https://github.com/skvadrik/re2c/releases/download/$V/

TEST_DEPENDS=		shells/bash

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
