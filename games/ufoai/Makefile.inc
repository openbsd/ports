# $OpenBSD: Makefile.inc,v 1.5 2013/08/07 07:47:28 kirby Exp $

# data package is useless without ufoai itself, which can only be
# built on some arches.
# Saves a useless 895MB package on other arches.
ONLY_FOR_ARCHS=	amd64 i386 powerpc

CATEGORIES = 	games

V ?= 		2.4

HOMEPAGE = 	http://ufoai.sourceforge.net/

MAINTAINER = 	Kirill Bychkov <kirby@openbsd.org>

MASTER_SITES = 	${MASTER_SITE_SOURCEFORGE:=ufoai/}

# GPLv2+, MIT, Public Domain, CC-BY-SA 3.0
PERMIT_PACKAGE_CDROM =  Yes

NO_TEST = 	Yes
