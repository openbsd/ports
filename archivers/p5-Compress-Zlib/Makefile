# $OpenBSD: Makefile,v 1.29 2002/07/10 20:48:12 avsm Exp $

COMMENT=	"perl interface to the zlib compression library"
DISTNAME=	Compress-Zlib-1.16
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	archivers perl5
NEED_VERSION=	1.525

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Compress/}

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
