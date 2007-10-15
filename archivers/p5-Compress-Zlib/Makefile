# $OpenBSD: Makefile,v 1.48 2007/10/15 16:45:16 sthen Exp $

COMMENT=	perl interface to the zlib compression library

MODULES=	cpan

DISTNAME=	Compress-Zlib-2.007
CATEGORIES=	archivers

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::archivers/p5-IO-Compress-Zlib

EXAMPLE_FILES=	filtdef filtinf gzcat gzgrep gzstream

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Compress-Zlib
	@cd ${WRKSRC}/examples && perl -pi -e \
		's,/usr/local/bin/perl,/usr/bin/perl,g' ${EXAMPLE_FILES}
	@cd ${WRKSRC}/examples && ${INSTALL_SCRIPT} ${EXAMPLE_FILES} \
		${PREFIX}/share/examples/p5-Compress-Zlib

.include <bsd.port.mk>
