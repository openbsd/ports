# $OpenBSD: Makefile,v 1.18 2001/01/16 23:19:47 avsm Exp $

DISTNAME=	Compress-Zlib-1.09
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	archivers perl5
NEED_VERSION=	1.348

MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= Compress

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE= perl
EXAMPLE_FILES=	filtdef filtinf gzcat gzgrep gzstream

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Compress-Zlib
.for i in ${EXAMPLE_FILES}
	${INSTALL_SCRIPT} ${WRKBUILD}/examples/$i \
		${PREFIX}/share/examples/p5-Compress-Zlib
.endfor

.include <bsd.port.mk>
