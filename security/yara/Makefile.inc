# $OpenBSD: Makefile.inc,v 1.9 2018/08/16 09:58:47 rpointel Exp $

VERSION ?=		3.8.0

CATEGORIES =		security

HOMEPAGE =		http://virustotal.github.io/yara/

GH_ACCOUNT =   VirusTotal
GH_TAGNAME =   v${VERSION}

# Apache v2
PERMIT_PACKAGE_CDROM =	Yes

MAINTAINER ?=	Remi Pointel <rpointel@openbsd.org>
