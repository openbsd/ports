# $OpenBSD: Makefile,v 1.4 2022/02/20 18:54:09 naddy Exp $

COMMENT =	libraries for the portable C compiler

DISTNAME =	pcc-libs-${DISTVER}
PKGNAME =	pcc-libs-${PKGVER}
REVISION =	0

MASTER_SITES =	http://pcc.ludd.ltu.se/ftp/pub/pcc-libs/ \
		ftp://pcc.ludd.ltu.se/pub/pcc-libs/

CONFIG = 	${MACHINE_ARCH:S/amd64/x86_64/}-unknown-openbsd${OSREV}
SUBST_VARS =	CONFIG PCCVER

.include <bsd.port.mk>
