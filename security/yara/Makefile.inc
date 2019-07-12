# $OpenBSD: Makefile.inc,v 1.13 2019/07/12 20:49:38 sthen Exp $

VERSION ?=		3.10.0

CATEGORIES =		security

HOMEPAGE =		http://virustotal.github.io/yara/

GH_ACCOUNT =   VirusTotal
GH_TAGNAME =   v${VERSION}

# Apache v2
PERMIT_PACKAGE =	Yes

MAINTAINER ?=	Remi Pointel <rpointel@openbsd.org>
