# $OpenBSD: Makefile,v 1.24 2007/01/15 17:40:10 simon Exp $

SHARED_ONLY=	Yes

COMMENT=	"perl module for using OpenSSL"

MODULES=	cpan
VERSION=	1.30
DISTNAME=	Net_SSLeay.pm-${VERSION}
PKGNAME=	p5-Net-SSLeay-${VERSION}p0
CATEGORIES=	security

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Net/}

# same terms as OpenSSL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		crypto ssl

PLDIR=	${PREFIX}/share/examples/p5-Net-SSLeay
SRCDIR=	${WRKSRC}/examples

post-install:
	${INSTALL_DATA_DIR} ${PLDIR}
	${INSTALL_SCRIPT} ${SRCDIR}/*.pl ${PLDIR}/
	${INSTALL_DATA} ${SRCDIR}/req.conf ${PLDIR}/req.conf

.include <bsd.port.mk>
