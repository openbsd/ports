# $OpenBSD: Makefile,v 1.10 2013/03/11 11:12:34 espie Exp $

COMMENT=	Java program analyzer and checker

DISTNAME=	jlint-3.0
CATEGORIES=	java

HOMEPAGE=	http://artho.com/jlint/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

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
