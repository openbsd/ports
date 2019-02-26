# $OpenBSD: Makefile.inc,v 1.11 2019/02/26 09:09:17 rpointel Exp $

VERSION ?=		3.9.0

CATEGORIES =		security

HOMEPAGE =		http://virustotal.github.io/yara/

GH_ACCOUNT =   VirusTotal
GH_TAGNAME =   v${VERSION}

# Apache v2
PERMIT_PACKAGE_CDROM =	Yes

MAINTAINER ?=	Remi Pointel <rpointel@openbsd.org>
