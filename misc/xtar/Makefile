# $OpenBSD: Makefile,v 1.22 2002/10/27 21:07:54 naddy Exp $

COMMENT=	"view and manipulate contents of a tar file"

DISTNAME=	xtar-1.4
CATEGORIES=	misc

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=utilities/}

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	imake
USE_MOTIF=	any
MAKE_FLAGS=	EXTRA_LDOPTIONS=-L${WRKBUILD}/common

NO_REGRESS=	Yes

.include <bsd.port.mk>
