# $OpenBSD: Makefile,v 1.3 2004/08/10 08:23:37 xsa Exp $

COMMENT=	"compilation manager for Haskell programs"
 
V=		3.08
DISTNAME=	hmake-${V}
CATEGORIES=	devel

HOMEPAGE=	http://www.haskell.org/hmake/
MAINTAINER=	Don Stewart <dons@openbsd.org>

MODULES=	lang/ghc

MASTER_SITES=	http://www.haskell.org/hmake/ \
		ftp://ftp.cs.york.ac.uk/pub/haskell/hmake/ \
		http://www.cs.york.ac.uk/fp/hmake/

NO_REGRESS=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE=simple

# BSD style w/o advertising clause
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
