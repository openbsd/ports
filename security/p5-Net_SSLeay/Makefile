# $OpenBSD: Makefile,v 1.22 2006/05/24 19:06:55 grunk Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"perl module for using OpenSSL"

VERSION=	1.30
DISTNAME=	Net_SSLeay.pm-${VERSION}
PKGNAME=	p5-Net-SSLeay-${VERSION}
CATEGORIES=	security perl5

HOMEPAGE=	http://www.bacus.pt/Net_SSLeay/index.html
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Net/}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		crypto ssl

CONFIGURE_STYLE= perl

PLDIR=	${PREFIX}/share/examples/p5-Net-SSLeay
SRCDIR=	${WRKSRC}/examples

post-install:
	${INSTALL_DATA_DIR} ${PLDIR}
	${INSTALL_SCRIPT} ${SRCDIR}/*.pl ${PLDIR}/
	${INSTALL_DATA} ${SRCDIR}/req.conf ${PLDIR}/req.conf

.include <bsd.port.mk>
