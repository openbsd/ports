# $OpenBSD: Makefile.inc,v 1.5 2019/01/30 00:30:09 bcallah Exp $

# Also ppc64le
ONLY_FOR_ARCHS =	amd64 arm64
BROKEN =		needs updating for llvm-7.0.1, being worked on
#BROKEN-arm64 =		see flang issue 557, temporary

CATEGORIES ?=	lang

HOMEPAGE ?=	http://www.flang-compiler.org/
MAINTAINER ?=	Brian Callahan <bcallah@openbsd.org>

GH_ACCOUNT ?=	flang-compiler

# driver: BSD
# flang: Apache 2.0 (will become BSD once integrated into LLVM)
# libpgmath: Apache 2.0 (will become BSD once integrated into LLVM)
PERMIT_PACKAGE_CDROM =	Yes

NO_TEST ?=	Yes
