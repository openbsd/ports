# OpenBSD makefile for:   xaniroc
# Version required:    0.3
# Date created:        May 19 1998
# Whom:                Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.14 2002/03/21 21:25:56 espie Exp $
#

COMMENT=	"animate your root-cursor"

DISTNAME=	xaniroc
PKGNAME=	xaniroc-1.02
CATEGORIES=	x11
NEED_VERSION=	1.515
MASTER_SITES=	ftp://ftp.freebird.org/unixware/freebird/x11/utils/ \
		ftp://sunsite.cnlab-switch.ch/mirror/novell/freebird/x11/utils/
EXTRACT_SUFX=	.src.tar.Z

# License: NONE
PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	"no license"
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	"no license"

USE_X11=	Yes
CONFIGURE_STYLE=	imake

post-extract:
	mv ${WRKSRC}/manpage.1 ${WRKSRC}/xaniroc.man

.include <bsd.port.mk>
