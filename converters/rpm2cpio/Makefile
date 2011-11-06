# $OpenBSD: Makefile,v 1.13 2011/11/06 18:09:57 jasper Exp $

COMMENT=	rpm2cpio converter in Perl

DISTNAME=	rpm2cpio-1.3
CATEGORIES=	converters archivers

REVISION=	1

HOMEPAGE=	http://www.iagora.com/~espel/hacks.html

# BSD
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

DISTFILES=	# empty

RUN_DEPENDS=	archivers/bzip2 \
		archivers/xz

# don't extract, don't build. Install the script directly
EXTRACT_ONLY=	# empty
NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_SCRIPT} ${FILESDIR}/rpm2cpio ${PREFIX}/bin

.include <bsd.port.mk>
