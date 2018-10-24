# $OpenBSD: Makefile,v 1.18 2018/10/24 14:28:06 sthen Exp $

COMMENT=	Java program analyzer and checker

DISTNAME=	jlint-3.1.2
REVISION =	3
CATEGORIES=	java

HOMEPAGE=	http://jlint.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=  Yes
WANTLIB=		c z m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=jlint/}

MAKE_ENV+=	CC="${CC}" CPP="${CXX}" \
		INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
		INSTALL_DATA_DIR="${INSTALL_DATA_DIR}" \
		INSTALL_DATA="${INSTALL_DATA}"

NO_TEST=	Yes

.include <bsd.port.mk>
