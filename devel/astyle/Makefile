# $OpenBSD: Makefile,v 1.8 2002/10/25 22:37:52 naddy Exp $

COMMENT=		"indenter and formatter of C/C++/Java source files"

DISTNAME=		astyle_1.15.3
PKGNAME=		${DISTNAME:S/_/-/}
CATEGORIES=		devel

HOMEPAGE=		http://astyle.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=astyle/}
EXTRACT_SUFX=		.zip

MAKE_ENV=		CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"

WRKDIST=		${WRKDIR}

NO_REGRESS=		Yes

.include <bsd.port.mk>
