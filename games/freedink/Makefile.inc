# $OpenBSD: Makefile.inc,v 1.3 2019/05/07 15:27:47 bcallah Exp $

CATEGORIES ?=	games x11

HOMEPAGE ?=	https://www.gnu.org/software/freedink/
MAINTAINER ?=	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES ?=	${MASTER_SITE_GNU:=freedink/}
