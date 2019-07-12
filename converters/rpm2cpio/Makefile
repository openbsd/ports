# $OpenBSD: Makefile,v 1.16 2019/07/12 20:43:52 sthen Exp $

COMMENT=	rpm2cpio converter in Perl

DISTNAME=	rpm2cpio-1.3
CATEGORIES=	converters archivers

REVISION=	2

HOMEPAGE=	http://www.freebsd.org/cgi/cvsweb.cgi/ports/archivers/rpm2cpio/

# BSD
PERMIT_PACKAGE=	Yes

DISTFILES=	# empty

RUN_DEPENDS=	archivers/bzip2 \
		archivers/xz

# don't extract, don't build. Install the script directly
EXTRACT_ONLY=	# empty
NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_SCRIPT} ${FILESDIR}/rpm2cpio ${PREFIX}/bin

.include <bsd.port.mk>
