# $OpenBSD: Makefile.inc,v 1.10 2018/08/17 07:49:58 rpointel Exp $

VERSION ?=		3.8.1

CATEGORIES =		security

HOMEPAGE =		http://virustotal.github.io/yara/

GH_ACCOUNT =   VirusTotal
GH_TAGNAME =   v${VERSION}

# Apache v2
PERMIT_PACKAGE_CDROM =	Yes

MAINTAINER ?=	Remi Pointel <rpointel@openbsd.org>
