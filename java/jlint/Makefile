# $OpenBSD: Makefile,v 1.12 2015/06/17 19:06:58 jasper Exp $

COMMENT=	Java program analyzer and checker

DISTNAME=	jlint-3.1.2
CATEGORIES=	java

HOMEPAGE=	http://artho.com/jlint/

# GPLv2+
PERMIT_PACKAGE_CDROM=  Yes
WANTLIB=		c z m stdc++

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=jlint/}

MAKE_ENV+=	CC="${CC}" CPP="${CXX}" \
		INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
		INSTALL_DATA_DIR="${INSTALL_DATA_DIR}" \
		INSTALL_DATA="${INSTALL_DATA}"

NO_TEST=	Yes

.include <bsd.port.mk> 
