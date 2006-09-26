# $OpenBSD: Makefile,v 1.43 2006/09/26 12:37:15 kevlo Exp $

SHARED_ONLY=	Yes

COMMENT=	"perl interface to the zlib compression library"
DISTNAME=	Compress-Zlib-1.42
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	archivers perl5

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Compress/}

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=	z

CONFIGURE_STYLE=perl
EXAMPLE_FILES=	filtdef filtinf gzcat gzgrep gzstream

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Compress-Zlib
.for i in ${EXAMPLE_FILES}
	${INSTALL_SCRIPT} ${WRKBUILD}/examples/$i \
		${PREFIX}/share/examples/p5-Compress-Zlib
.endfor

.include <bsd.port.mk>
