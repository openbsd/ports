# $OpenBSD: Makefile.inc,v 1.12 2020/08/05 08:04:39 bcallah Exp $

BROKEN =	not yet ported to llvm-10

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
