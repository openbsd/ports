# $OpenBSD: Makefile.inc,v 1.3 2013/05/16 10:10:35 kirby Exp $

# data package is useless without ufoai itself, which can only be
# built on shared lib arches.
# Saves a useless 895MB package on !shared arch.
SHARED_ONLY = 	Yes

CATEGORIES = 	games games/ufoai

V ?= 		2.4

HOMEPAGE = 	http://ufoai.sourceforge.net/

MAINTAINER = 	Kirill Bychkov <kirby@openbsd.org>

MASTER_SITES = 	${MASTER_SITE_SOURCEFORGE:=ufoai/}

# GPLv2+, MIT, Public Domain, CC-BY-SA 3.0
PERMIT_PACKAGE_CDROM =  Yes

NO_TEST = 	Yes
