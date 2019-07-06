# $OpenBSD: Makefile.inc,v 1.8 2019/07/06 15:00:03 jca Exp $

BROKEN ?=	needs an update for LLVM-8.0.0

# Also ppc64le
ONLY_FOR_ARCHS =	amd64 arm64

CATEGORIES ?=	lang

HOMEPAGE ?=	http://www.flang-compiler.org/
MAINTAINER ?=	Brian Callahan <bcallah@openbsd.org>

GH_ACCOUNT ?=	flang-compiler

# driver: BSD
# flang: Apache 2.0
# libpgmath: Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

NO_TEST ?=	Yes
