# $OpenBSD: Makefile,v 1.22 2013/03/11 11:42:47 espie Exp $

COMMENT=	generate groff/HTML from linuxdoc/docbook SGML documents

DISTNAME=	sgmlformat-1.7
REVISION =	1
CATEGORIES=	textproc print
MASTER_SITES=	http://fallout.campusview.indiana.edu/ports/distfiles/

MAINTAINER=	Matthieu Herrb <matthieu@openbsd.org>

# License: BSD, badly worded
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c 

USE_GROFF =	Yes
RUN_DEPENDS=	textproc/openjade \
		textproc/linuxdoc \
		textproc/docbook

FAKE_FLAGS=PREFIX=${PREFIX}

.include <bsd.port.mk>
