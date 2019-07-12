# $OpenBSD: Makefile.inc,v 1.8 2019/07/12 21:07:46 sthen Exp $

# data package is useless without ufoai itself, which can only be
# built on some arches.
# Saves a useless 895MB package on other arches.
ONLY_FOR_ARCHS=	amd64 i386 powerpc

CATEGORIES = 	games

V ?= 		2.5

HOMEPAGE = 	https://ufoai.org/

MAINTAINER = 	Kirill Bychkov <kirby@openbsd.org>

MASTER_SITES = 	${MASTER_SITE_SOURCEFORGE:=ufoai/}

# GPLv2+, MIT, Public Domain, CC-BY-SA 3.0
PERMIT_PACKAGE =	Yes

NO_TEST = 	Yes
