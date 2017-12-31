# $OpenBSD: Makefile.inc,v 1.1.1.1 2017/12/31 18:06:38 bcallah Exp $

# Also ppc64le
ONLY_FOR_ARCHS =	amd64 #arm64

CATEGORIES ?=	lang

HOMEPAGE ?=	http://www.flang-compiler.org/
MAINTAINER ?=	Brian Callahan <bcallah@openbsd.org>

GH_ACCOUNT ?=	flang-compiler

# driver: BSD
# flang: Apache 2.0 (will become BSD once integrated into LLVM)
PERMIT_PACKAGE_CDROM =	Yes

NO_TEST ?=	Yes
