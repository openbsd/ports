# $OpenBSD: Makefile,v 1.26 2008/04/26 16:37:33 bluhm Exp $

SHARED_ONLY=		Yes

COMMENT=		perl module for using OpenSSL

DISTNAME=		Net-SSLeay-1.32

CATEGORIES=		security

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

PLDIR=	${PREFIX}/share/examples/p5-Net-SSLeay
SRCDIR=	${WRKSRC}/examples

post-install:
	${INSTALL_DATA_DIR} ${PLDIR}
	${INSTALL_SCRIPT} ${SRCDIR}/*.pl ${PLDIR}/
	${INSTALL_DATA} ${SRCDIR}/req.conf ${PLDIR}/req.conf

.include <bsd.port.mk>
