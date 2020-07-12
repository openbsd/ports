# $OpenBSD: Makefile.inc,v 1.11 2020/07/12 18:06:48 bcallah Exp $

# Also ppc64le
ONLY_FOR_ARCHS =	amd64 arm64

CATEGORIES ?=	lang

HOMEPAGE ?=	http://www.flang-compiler.org/
MAINTAINER ?=	Brian Callahan <bcallah@openbsd.org>

GH_ACCOUNT ?=	flang-compiler

# driver: BSD
# flang: Apache 2.0 with LLVM exceptions
# libpgmath: Apache 2.0 with LLVM exceptions
PERMIT_PACKAGE =	Yes

NO_TEST ?=	Yes
