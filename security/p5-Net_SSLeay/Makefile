# $OpenBSD: Makefile,v 1.23 2006/07/19 16:07:22 steven Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"perl module for using OpenSSL"

VERSION=	1.30
DISTNAME=	Net_SSLeay.pm-${VERSION}
PKGNAME=	p5-Net-SSLeay-${VERSION}p0
CATEGORIES=	security perl5

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
