# $OpenBSD: Makefile,v 1.27 2008/07/26 10:51:16 bluhm Exp $

SHARED_ONLY=		Yes

COMMENT=		perl module for using OpenSSL

DISTNAME=		Net-SSLeay-1.34

CATEGORIES=		security

MAINTAINER=		Alexander Bluhm <bluhm@openbsd.org>

# same terms as OpenSSL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		crypto ssl z

MODULES=		cpan
REGRESS_DEPENDS=	::devel/p5-Test-Exception \
			::devel/p5-Test-Warn \
			::devel/p5-Test-NoWarnings \
			::devel/p5-Test-Pod \
			::devel/p5-Test-Pod-Coverage

SRCDIR=	${WRKSRC}/examples
DSTDIR=	${PREFIX}/share/examples/p5-Net-SSLeay

post-install:
	${INSTALL_DATA_DIR} ${DSTDIR}
	${INSTALL_SCRIPT} ${SRCDIR}/*.pl ${DSTDIR}/
	${INSTALL_DATA} ${SRCDIR}/*.conf ${SRCDIR}/*.pem ${DSTDIR}/

.include <bsd.port.mk>
