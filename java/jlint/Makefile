# $OpenBSD: Makefile,v 1.9 2011/08/29 14:12:17 jasper Exp $

COMMENT=	Java program analyzer and checker

DISTNAME=	jlint-3.0
CATEGORIES=	java

HOMEPAGE=	http://artho.com/jlint/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes
WANTLIB=		c z m stdc++

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=jlint/}

MAKE_ENV+=	CC="${CC}" CPP="${CXX}" \
		INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
		INSTALL_DATA_DIR="${INSTALL_DATA_DIR}" \
		INSTALL_DATA="${INSTALL_DATA}"

NO_REGRESS=	Yes

.include <bsd.port.mk> 
