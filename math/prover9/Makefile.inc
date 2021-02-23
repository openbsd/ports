# $OpenBSD: Makefile.inc,v 1.6 2021/02/23 19:39:29 sthen Exp $

CATEGORIES ?=	math

HOMEPAGE ?=	http://www.cs.unm.edu/%7Emccune/prover9/

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES?=		lang/python
MODPY_VERSION?=		${MODPY_DEFAULT_VERSION_2}
