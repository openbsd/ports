# $OpenBSD: Makefile,v 1.1.1.1 2011/07/02 09:48:03 jasper Exp $

# XXX: Upstream doesn't keep old files; if updating please mirror or ask jasper@

COMMENT=	deductive database system similar to Prolog

DISTNAME=	datalog-1.5
CATEGORIES=	lang

HOMEPAGE=	http://www.ccs.neu.edu/home/ramsdell/tools/datalog/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c m

MASTER_SITES=		${HOMEPAGE} \
			http://distfiles.nl/

MODULES=		lang/lua

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
