# $OpenBSD: Makefile.inc,v 1.2 2021/06/12 02:21:21 daniel Exp $

# Other architectures not fully supported yet
ONLY_FOR_ARCHS = i386 amd64

DISTVER =	20210608
PKGVER =	1.1.0.${DISTVER}
PCCVER =	1.2.0.DEVEL

# XXX: If a new release is made:
# DISTVER =	${PCCVER}
# PKGVER =	${PCCVER}
# PCCVER =	1.2.0

EXTRACT_SUFX =	.tgz

CATEGORIES ?=	lang

HOMEPAGE ?=	http://pcc.ludd.ltu.se/

# BSD
PERMIT_PACKAGE =	Yes

CONFIGURE_STYLE =	gnu

NO_TEST ?=		Yes
