# $OpenBSD: Makefile.inc,v 1.4 2018/08/03 05:47:35 bcallah Exp $

# Also ppc64le
ONLY_FOR_ARCHS =	amd64 arm64
BROKEN-arm64 =		see flang issue 557, temporary

CATEGORIES ?=	lang

HOMEPAGE ?=	http://www.flang-compiler.org/
MAINTAINER ?=	Brian Callahan <bcallah@openbsd.org>

GH_ACCOUNT ?=	flang-compiler

# driver: BSD
# flang: Apache 2.0 (will become BSD once integrated into LLVM)
# libpgmath: Apache 2.0 (will become BSD once integrated into LLVM)
PERMIT_PACKAGE_CDROM =	Yes

NO_TEST ?=	Yes
