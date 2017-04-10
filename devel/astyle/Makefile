# $OpenBSD: Makefile,v 1.14 2017/04/10 11:45:25 sthen Exp $

COMMENT=		indenter and formatter of C/C++/Java source files

DISTNAME=		astyle_1.15.3
PKGNAME=		${DISTNAME:S/_/-/}
CATEGORIES=		devel

HOMEPAGE=		http://astyle.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m ${LIBCXX}

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=astyle/}
EXTRACT_SUFX=		.zip

MAKE_ENV=		CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"

WRKDIST=		${WRKDIR}

NO_TEST=		Yes

.include <bsd.port.mk>
