# $OpenBSD: Makefile.inc,v 1.14 2019/11/11 20:34:33 rpointel Exp $

VERSION ?=		3.11.0

CATEGORIES =		security

HOMEPAGE =		http://virustotal.github.io/yara/

GH_ACCOUNT =   VirusTotal
GH_TAGNAME =   v${VERSION}

# Apache v2
PERMIT_PACKAGE =	Yes

MAINTAINER ?=	Remi Pointel <rpointel@openbsd.org>
