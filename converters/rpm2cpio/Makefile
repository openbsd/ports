# $OpenBSD: Makefile,v 1.18 2020/06/19 00:14:35 kn Exp $

COMMENT=	convert .rpm files to cpio format

DISTNAME=	rpm2cpio-1.4
CATEGORIES=	converters archivers
REVISION=	0

HOMEPAGE=	https://svnweb.freebsd.org/ports/head/archivers/rpm2cpio/

# BSD
PERMIT_PACKAGE=	Yes

DISTFILES=	# empty

RUN_DEPENDS=	archivers/libarchive>2.8

NO_BUILD=	Yes
NO_TEST=	Yes

do-install:
	${INSTALL_SCRIPT} ${FILESDIR}/rpm2cpio ${PREFIX}/bin

.include <bsd.port.mk>
