# $OpenBSD: Makefile.inc,v 1.8 2018/05/18 09:02:29 rpointel Exp $

VERSION ?=		3.7.1

CATEGORIES =		security

HOMEPAGE =		http://virustotal.github.io/yara/

GH_ACCOUNT =   VirusTotal
GH_TAGNAME =   v${VERSION}

# Apache v2
PERMIT_PACKAGE_CDROM =	Yes

MAINTAINER ?=	Remi Pointel <rpointel@openbsd.org>
