# $OpenBSD: Makefile,v 1.17 2020/03/21 11:07:38 kn Exp $

COMMENT=	convert .rpm files to cpio format

DISTNAME=	rpm2cpio-1.4
CATEGORIES=	converters archivers

HOMEPAGE=	https://svnweb.freebsd.org/ports/archivers/rpm2cpio/

# BSD
PERMIT_PACKAGE=	Yes

DISTFILES=	# empty

RUN_DEPENDS=	archivers/libarchive>2.8

NO_BUILD=	Yes
NO_TEST=	Yes

do-install:
	${INSTALL_SCRIPT} ${FILESDIR}/rpm2cpio ${PREFIX}/bin

.include <bsd.port.mk>
