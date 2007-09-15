# New ports collection makefile for:	sgmlformat
# Version required:	1.6
# Date created:		July 16, 1997
# Whom:			jfieber
#
# $FreeBSD: Makefile,v 1.9 1998/02/21 21:59:37 jfieber Exp $
# $OpenBSD: Makefile,v 1.16 2007/09/15 20:59:42 merdely Exp $
#

COMMENT=	generate groff/HTML from linuxdoc/docbook SGML documents

DISTNAME=	sgmlformat-1.7
CATEGORIES=	textproc print
MASTER_SITES=	http://fallout.campusview.indiana.edu/ports/distfiles/

MAINTAINER=	Matthieu Herrb <matthieu@openbsd.org>

# License: BSD, badly worded
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c 

RUN_DEPENDS=	::textproc/openjade \
		::textproc/linuxdoc \
		::textproc/docbook

FAKE_FLAGS=PREFIX=${PREFIX}

.include <bsd.port.mk>
