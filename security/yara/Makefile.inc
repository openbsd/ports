# $OpenBSD: Makefile.inc,v 1.12 2019/05/16 09:37:00 rpointel Exp $

VERSION ?=		3.10.0

CATEGORIES =		security

HOMEPAGE =		http://virustotal.github.io/yara/

GH_ACCOUNT =   VirusTotal
GH_TAGNAME =   v${VERSION}

# Apache v2
PERMIT_PACKAGE_CDROM =	Yes

MAINTAINER ?=	Remi Pointel <rpointel@openbsd.org>
