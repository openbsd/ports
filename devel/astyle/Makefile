# $OpenBSD: Makefile,v 1.16 2017/07/23 09:26:26 espie Exp $

COMMENT=		indenter and formatter of C/C++/Java source files

DISTNAME=		astyle_1.15.3
REVISION =		0
PKGNAME=		${DISTNAME:S/_/-/}
CATEGORIES=		devel

HOMEPAGE=		http://astyle.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m ${COMPILER_LIBCXX}

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=astyle/}
EXTRACT_SUFX=		.zip

MAKE_ENV=		CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"

WRKDIST=		${WRKDIR}

NO_TEST=		Yes

.include <bsd.port.mk>
