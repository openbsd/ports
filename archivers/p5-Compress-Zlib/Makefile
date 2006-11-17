# $OpenBSD: Makefile,v 1.44 2006/11/17 15:08:16 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	"perl interface to the zlib compression library"

MODULES=	cpan

DISTNAME=	Compress-Zlib-1.42
CATEGORIES=	archivers

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=	z

EXAMPLE_FILES=	filtdef filtinf gzcat gzgrep gzstream

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Compress-Zlib
.for i in ${EXAMPLE_FILES}
	${INSTALL_SCRIPT} ${WRKBUILD}/examples/$i \
		${PREFIX}/share/examples/p5-Compress-Zlib
.endfor

.include <bsd.port.mk>
