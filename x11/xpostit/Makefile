# $OpenBSD: Makefile,v 1.12 2001/10/28 13:05:51 espie Exp $

COMMENT=	"PostIt (R) messages onto your X11 screen"

DISTNAME=	xpostit3.3.1
PKGNAME=	xpostit-3.3.1
CATEGORIES=	x11
NEED_VERSION=	1.402

# Not all servers archie could find actually still have it.  Alas, some
# servers only have the comp.sources.x version, with its distfile named
# `part01.gz'.
#
MASTER_SITES=	ftp://ftp.hrz.th-darmstadt.de/pub/X11/R5contrib/
EXTRACT_SUFX=	.tar.Z

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
CONFIGURE_STYLE=	imake
WRKDIST=	${WRKDIR}/xpostit

.include <bsd.port.mk>
